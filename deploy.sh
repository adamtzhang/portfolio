#!/bin/bash

# 构建项目
npm run build

# 确保.nojekyll文件存在
touch out/.nojekyll

# 部署到GitHub Pages
npm run deploy

echo "部署完成！" 