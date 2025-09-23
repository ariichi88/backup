# backup 
ホームフォルダ内の各フォルダを外付けHDDにバックアップするツール  

## 注意
Linux（Ubuntu）用のシェルスクリプトです  

## 準備
外付けのHDD又はSSDの準備  

## インストール
GitHubからクローン  
```
git@github.com:ariichi88/backup.git
```
backup.shをパスの等っている場所にコピー  
```
cp backup.sh /hoge/fuga
```
FromDirとToDirの設定  
backup.shをエディタで開きFromDirとToDirを設定する  

実行権（パーミッション）の変更 
```
chmod +x backup.sh
```

## bakdirとbaklogの設定
```
BACKUP_DIR=/media/*username*/*medianame*/*backupfolder*  
BACKUP_LOG=$BACKUP_DIR/*logname*  
```
注意 メディア名に空白が入ると正しく作動しません  

## 使い方
crontab等に実行時期を設定する(手動で実行してもOK)  
