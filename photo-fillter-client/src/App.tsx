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
      <ImageForm onImageSet={function (image: File): void { }} />
      <ButtonGroup
        buttons={fillters}
        selected={selectedButton}
        onSelect={handleSelect}
      />
    </div>
  );
};

export default App;
