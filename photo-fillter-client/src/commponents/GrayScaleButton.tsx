import React, { useEffect } from 'react';
import init, { grayscale } from '../pkg/photo_fillter';

type GrayScaleButtonProps = {
    imageFile: File | null;
    setProcessedImage: (img: File) => void;
};

const GrayScaleButton: React.FC<GrayScaleButtonProps> = ({ imageFile, setProcessedImage }) => {
    useEffect(() => {
        // WASMモジュールの初期化
        init().then(() => {
            console.log('WASM Initialized');
        });
    }, []);


    const handleProcessImage = async () => {
        if (!imageFile) return;

        const reader = new FileReader();
        reader.readAsDataURL(imageFile);

        reader.onload = () => {
            const img = new Image();
            img.src = reader.result as string;
            img.onload = () => {
                const width = img.width;
                const height = img.height;

                const canvas = document.createElement('canvas');
                const ctx = canvas.getContext('2d');
                if (!ctx) return;

                canvas.width = width;
                canvas.height = height;
                ctx.drawImage(img, 0, 0, width, height);

                // 画像データの取得
                const imgData = ctx.getImageData(0, 0, width, height);
                const data = imgData.data;

                // 画像データをWASMのgrayscale関数で処理
                const result = grayscale(new Uint8Array(data), width, height);
                // 結果をCanvasに描画
                const resultImgData = new ImageData(
                    new Uint8ClampedArray(result),
                    width,
                    height
                );
                ctx.putImageData(resultImgData, 0, 0);

                // CanvasをBlobとしてエクスポートし、新しいFileオブジェクトを作成
                canvas.toBlob((blob) => {
                    if (blob) {
                        const processedFile = new File([blob], `processed_${imageFile.name}`, {
                            type: imageFile.type,
                        });
                        setProcessedImage(processedFile);
                    }
                });
            };
        };
    };

    return (
        <div className="flex flex-col items-center">
            <button
                onClick={handleProcessImage}
                className={`px-4 py-2 text-white rounded-full ${imageFile ? "bg-blue-500 hover:bg-blue-600" : "bg-gray-400"}`}
            >
                変換
            </button>
        </div>
    );
};

export default GrayScaleButton;
