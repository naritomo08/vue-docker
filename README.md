# vue-docker

vue環境を立ち上げることができます。

## 事前準備

mac+DockerCompose+vscode+gitでの環境を構築してること。

## 開発環境構築方法(Vue)

### docker構成ソース入手

以下のコマンドで入手する。

```bash
git clone https://github.com/naritomo08/vue-docker.git
cd vue-docker
```

### コンテナ立ち上げ

```bash
docker-compose build
docker-compose up -d
```

### サイト確認

以下のURLにアクセスし、Vueトップ画面が出てくること。

```bash
http://localhost:8080/
```

以下のファイルを編集し、トップ画面内容が変わることも確認してください。

```bash
vue-docker/src/App.vue
```
