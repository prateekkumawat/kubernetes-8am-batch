/** @type {import('next').NextConfig} */
const isProd = process.env.NODE_ENV === 'production'
// const basePath = isProd ? '/crypto-nextjs' : ''
const basePath = "";

const nextConfig = {
  output: 'export',
  trailingSlash: true,
  basePath: '',
  assetPrefix: '',
  images: {
    unoptimized: true
  }
};

export default nextConfig;
