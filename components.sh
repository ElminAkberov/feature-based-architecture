#!/bin/bash

read -p "The path of the created folder  (for example: ./src/components): " basePath
read -p "Input for the folder name: " folderName

# Eğer basePath boşsa mevcut dizin olarak ayarla
if [ -z "$basePath" ]; then
  basePath="."
fi

fullPath="$basePath/$folderName"

mkdir -p "$fullPath"

componentName="$(tr '[:lower:]' '[:upper:]' <<< ${folderName:0:1})${folderName:1}"

cat > "$fullPath/$componentName.tsx" <<EOL
import React from 'react';
import styles from './$componentName.module.scss';

const $componentName: React.FC = () => {
  return (
    <div className={styles.container}>
      {/* $componentName component */}
    </div>
  );
};

export default $componentName;
EOL

cat > "$fullPath/$componentName.module.scss" <<EOL
.container {
  /* $componentName styles */
}
EOL

cat > "$fullPath/index.ts" <<EOL
export { default } from './$componentName';
EOL

echo "$fullPath klasörü ve dosyaları oluşturuldu."
