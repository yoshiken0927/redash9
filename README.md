# redash9

Redashのバージョン9.0.0(beta)環境構築用のリポジトリ。

Ubuntu以外のOSだと`setup.sh`を利用することができなかったため作成しました。
https://github.com/getredash/setup

## docker-compose.yml ファイルの変更点
* doker imageをバージョン9.0.0に変更
* envファイルのパスを変更
* postgres の volume のパスを変更

### Redash公式のリリース
https://github.com/getredash/redash/releases

### docker hub
https://hub.docker.com/r/redash/redash/tags?page=1&ordering=last_updated


## setup

### 前提
git, docker, docker-compose がインストールされていること。
インストールする場合は以下の手順で実行。

### インストール手順

* git, dockerをインストール
```
sudo yum install -y git docker
```
```
git --version
```
```
docker --version
```

* dockerサービス登録
```
sudo service docker status
```
```
sudo service docker start
```
```
sudo service docker status
```

* docker-compose インストール
https://docs.docker.com/compose/install/#install-compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
```
sudo chmod +x /usr/local/bin/docker-compose
```
```
docker-compose --version
```
```
sudo usermod -a -G docker ec2-user
```

### Redash 構築手順

* このリポジトリをclone
```
git clone https://github.com/yoshiken0927/redash9.git
```

* envファイルにパスワード等を入力

* 以下のコマンドを実行

```
docker-compose run --rm server create_db
```
```
docker-compose up
```
