#!/bin/bash

set -e

echo "Building ECH Workers module..."

rm -rf build
mkdir -p build/module

# 克隆 ech-wk 项目并编译
git clone https://github.com/byJoey/ech-wk temp
cd temp
GOOS=android GOARCH=arm64 go build -o ech-workers
cd ..

# 复制文件到模块目录
cp -r src/* build/module
cp -r webui build/module
cp -r api build/module

mkdir -p build/module/system/bin
cp temp/ech-workers build/module/system/bin/
chmod 755 build/module/system/bin/ech-workers

# 创建 config.json
cp default/config.json build/module/

cd build/module

# 打包模块文件
zip -r ../echwk-module.zip *

cd ../..

# 清理临时文件
rm -rf temp

echo "Build completed successfully!"
