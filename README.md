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

### コンテナログイン

```bash
docker-compose exec vue-app bash
```

## 開発環境操作

### 開発環境コンテナ起動/設定再読み込み

```bash
docker-compose up -d
```

### 開発環境コンテナ停止

```bash
docker-compose stop
```

### 開発環境コンテナ破棄

```bash
docker-compose down
```