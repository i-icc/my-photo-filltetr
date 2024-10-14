import React, { useState, useRef } from 'react';

interface FileDropProps {
    onImageSet: (file: File) => void;
}

const FileDrop: React.FC<FileDropProps> = ({ onImageSet }) => {
    const [isDragActive, setIsDragActive] = useState(false);
    const inputRef = useRef<HTMLInputElement>(null);

    const handleDragOver = (event: React.DragEvent) => {
        event.preventDefault();
        setIsDragActive(true);
    };

    const handleDragLeave = () => {
        setIsDragActive(false);
    };

    const handleDrop = (event: React.DragEvent) => {
        event.preventDefault();
        setIsDragActive(false);
        if (event.dataTransfer.files && event.dataTransfer.files.length > 0) {
            onImageSet(event.dataTransfer.files[0]);
        }
    };

    const handleClick = () => {
        inputRef.current?.click();
    };

    return (
        <div
            className={`border-2 border-dashed rounded-md p-12 text-center cursor-pointer ${isDragActive ? 'border-blue-500' : 'border-gray-300'
                }`}
            onDragOver={handleDragOver}
            onDragLeave={handleDragLeave}
            onDrop={handleDrop}
            onClick={handleClick}
        >
            <input
                type="file"
                ref={inputRef}
                style={{ display: 'none' }}
                onChange={(e) => {
                    if (e.target.files) {
                        onImageSet(e.target.files[0]);
                    }
                }}
            />
            <p>ファイル添付 またはここにファイルをドロップ</p>
        </div>
    );
};

export default FileDrop;