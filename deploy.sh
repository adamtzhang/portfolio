#!/bin/bash

# 构建项目
npm run build

# 确保.nojekyll文件存在
touch out/.nojekyll

# 创建CNAME文件（如果需要自定义域名）
# echo "yourdomain.com" > out/CNAME

# 修复静态资源路径问题
# 创建一个临时目录来存储静态资源
mkdir -p out/portfolio/_next
cp -R out/_next/* out/portfolio/_next/

# 复制备用HTML文件
cp public/404.html out/
cp public/index.html out/
cp app/fallback.html out/

# 确保所有目录都有index.html
find out -type d -not -path "*/\.*" -not -path "*/node_modules*" -exec cp out/index.html {}/index.html \; 2>/dev/null || true

# 部署到GitHub Pages
npm run deploy

echo "部署完成！" 