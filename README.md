# redash9

Redashのバージョン9.0.0(beta)環境構築用のdocker-compose

Ubuntu以外のOSだと`setup.sh`を利用することができなかったため作成しました。。
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
git, docker, docker-composeがインストールされていること

### 手順

* このリポジトリをclone

* envファイルにパスワード等を入力

* 以下のコマンドを実行

```
docker-compose run --rm server create_db
```
```
docker-compose up
```
