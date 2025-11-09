git clone https://github.com/Passimx/chats-frontend.git
cd chats-frontend
git fetch
git checkout release
npm ci

npm run build
npm run dist:sha256
cp ./verify/dist.sha256 ./dist/dist.sha256

docker-compose up -d