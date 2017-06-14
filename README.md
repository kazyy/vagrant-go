# Windows7ローカル環境構築手順
Windows上のVMにローカル環境を構築する手順


## VirtualBox 4.3.40インストール

## Vagrant 1.6.5インストール

## Vagrantプラグインインストール
vagrant plugin install vagrant-vbguest  
vagrant plugin install vagrant-omnibus

# ソース配置
Windows上に~/git/ディレクトリ作成。本ディレクトリにソース配置  
※VM上の/usr/local/gitと同期される。

# コマンド
## VM起動
（vagrantをチェックアウトしたディレクトリで管理者として実行）  
vagrant up

しばらくすると、VMが起動する。

## VMへssh接続
IP: 192.168.99.100  
ID: vagrant  
秘密鍵: ~/.vagrant.d/insecure_private_key


## VM停止
vagrant halt
