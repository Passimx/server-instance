git clone https://github.com/Passimx/chats-frontend.git
cd chats-frontend
git fetch
git checkout release
npm ci

npm run build
npm run dist:sha256
cp ./verify/dist.sha256 ./dist/dist.sha256

sudo chown -R 1001:1001 ./data
docker-compose up -d
sudo chown -R 1001:1001 ./data