# 个人作品集网站

这是一个使用Next.js和Tailwind CSS构建的个人作品集网站。

## 功能

- 响应式设计
- 暗/亮模式切换
- 动画效果
- 联系表单
- 作品展示
- 技能和经验展示

## 技术栈

- Next.js
- React
- TypeScript
- Tailwind CSS
- Framer Motion (动画)

## 本地开发

1. 克隆仓库
```bash
git clone <仓库URL>
cd portfolio
```

2. 安装依赖
```bash
npm install
# 或
yarn install
```

3. 启动开发服务器
```bash
npm run dev
# 或
yarn dev
```

4. 在浏览器中打开 [http://localhost:3000](http://localhost:3000)

## 部署到GitHub Pages

1. 创建GitHub仓库

2. 将代码推送到GitHub
```bash
git remote add origin <你的GitHub仓库URL>
git branch -M main
git push -u origin main
```

3. 在package.json中添加homepage字段和部署脚本
```json
"homepage": "https://<你的GitHub用户名>.github.io/<仓库名>",
"scripts": {
  // 其他脚本...
  "predeploy": "npm run build",
  "deploy": "gh-pages -d out"
}
```

4. 安装gh-pages包
```bash
npm install --save-dev gh-pages
# 或
yarn add --dev gh-pages
```

5. 在next.config.js中添加配置
```js
/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  basePath: '/<仓库名>',
  assetPrefix: '/<仓库名>/',
  images: {
    unoptimized: true,
  },
}

module.exports = nextConfig
```

6. 部署到GitHub Pages
```bash
npm run deploy
# 或
yarn deploy
```

7. 在GitHub仓库设置中启用GitHub Pages，选择gh-pages分支作为源。

## 自定义

- 修改`app/components`目录下的组件以自定义内容
- 在`app/globals.css`中调整全局样式
- 在`tailwind.config.js`中自定义主题 