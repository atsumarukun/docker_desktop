## 環境

- ubuntu:22.04
- xfce 4.16
<br></br>

## スクリーンショット

<img src="./screenshot.png" alt="デスクトップイメージ" />
<br></br>

## 接続先

- port: 13389
- user: docker
- user-pass: docker
- root-pass: root
<br></br>

## 操作方法

### 起動
~~~bash
$ docker-compose up -d
~~~

`localhost:13389`にリモート接続
<br></br>

### 削除
~~~
$ docker-compose down --rmi all
~~~
<br></br>

### コンテナにbash接続
~~~
$ docker-compose exec docker_desktop bash
~~~
<br></br>

### ファイルの共有先
- host: files/
- container: ~/Public
<br></br>

## 作成環境

- ArchLinux
- docker 20.10.16
<br></br>

## 情報

タグより他のデスクトップ環境を選択可能