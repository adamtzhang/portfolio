/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export',
  // 部署到GitHub Pages时取消下面两行的注释，并替换<仓库名>为你的GitHub仓库名
  // 例如，如果你的仓库名是 "portfolio"，则应该是：
  basePath: '/portfolio',
  assetPrefix: '/portfolio/',
  images: {
    unoptimized: true,
  },
  trailingSlash: true,
  // 禁用图像优化
  distDir: 'out',
}

module.exports = nextConfig 