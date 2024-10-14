import React, { useState } from 'react';
import ButtonGroup from './commponents/ButtonGroup';
import ImageForm from './commponents/ImageForm';

const App: React.FC = () => {
  const fillters = ['gray scale', 'odd pixel'];

  const [selectedButton, setSelectedButton] = useState(fillters[0]);

  const handleSelect = (button: string) => {
    setSelectedButton(button);
  };

  return (
    <div className="p-8">
      <div className='w-9/10 max-h-[500px]'>
        <ImageForm onImageSet={function (image: File): void { }} />
      </div>
      <div>
        <ButtonGroup
          buttons={fillters}
          selected={selectedButton}
          onSelect={handleSelect}
        />
      </div>
    </div>
  );
};

export default App;
