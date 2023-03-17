# Node.jsイメージをベースにする
FROM node:latest

# アプリケーションのディレクトリを作成する
WORKDIR /app

# アプリケーションの依存パッケージをインストールする
COPY package*.json ./
RUN npm install

# アプリケーションのソースコードを追加する
COPY . .

# アプリケーションをビルドする
RUN npm run build

# アプリケーションを起動するコマンドを指定する
CMD ["npm", "run", "serve"]