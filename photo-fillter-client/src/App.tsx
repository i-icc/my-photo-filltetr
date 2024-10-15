import React, { useState } from 'react';
import ButtonGroup from './commponents/ButtonGroup';
import ImageForm from './commponents/ImageForm';
import GrayScaleButton from './commponents/GrayScaleButton';

const App: React.FC = () => {
  const grayscale_fillter = 'gray scale';
  const odd_pixel_fillter = 'odd pixel';
  const fillters = [grayscale_fillter, odd_pixel_fillter];

  const [selectedButton, setSelectedButton] = useState(fillters[0]);
  const [selectedImage, setSelectedImage] = useState<File | null>(null);
  const [filterdImage, seFilterdImage] = useState<File | null>(null);

  const handleSelect = (button: string) => {
    setSelectedButton(button);
  };

  return (
    <div className="p-8">
      <div className=''>
        wasm Photo Filter
      </div>
      {/* 画像セレクト */}
      <div className='w-9/10 max-h-[500px]'>
        <ImageForm onImageSet={setSelectedImage} />
      </div>
      {/* フィルターセレクト */}
      <div>
        <ButtonGroup
          buttons={fillters}
          selected={selectedButton}
          onSelect={handleSelect}
        />
      </div>
      <div>
        {/* フィルター毎の設定&実行ボタン */}
        {selectedButton === grayscale_fillter
          && <GrayScaleButton
            imageFile={selectedImage}
            setProcessedImage={seFilterdImage} />}

      </div>
      <div className='p-6'>
        {/* フィルター後の画像表示 */}
        {filterdImage && (
          <img
            src={URL.createObjectURL(filterdImage)}
            alt="filterd"
            className="max-h-[450px]"
          />
        )}
      </div>
    </div >
  );
};

export default App;
