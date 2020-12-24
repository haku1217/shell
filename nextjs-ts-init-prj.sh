#!/bin/sh

if [ $# != 1 ]; then
    echo "引数を1つ入れて下さい"
    exit 1
fi
PRJ=$1
echo "$PRJ"

mkdir -p $PRJ
cd $PRJ
yarn init -y
yarn add next react react-dom
yarn add -D @types/node @types/react typescript
RESULT_JSON='package.json'
echo "$(cat package.json | jq '. |= .+ {"scripts": {"build": "next build", "start": "next start -p 3000","dev": "next dev"}}')" \
> ${RESULT_JSON}

# mduch.sh src/pages/index.tsx
mkdir -p src/pages
touch src/pages/index.tsx
cat <<EOF > src/pages/index.tsx
import React from "react";
const Index = () => {
  return <div>foo</div>;
};
export default Index
EOF
code ../
exit 0
