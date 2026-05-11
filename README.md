# backup 
ホームフォルダ内の各フォルダを外付けHDDにバックアップするツール  

## 説明
Linux（Ubuntu）用のシェルスクリプト  

## 準備
外付けのHDD又はSSDの準備  

## 設定
BACKUP_DIR=/media/*username*/*medianame*/*backupfolder*
BACKUP_LOG=$BACKUP_DIR/*logname*

## backup.shに実行権限を付与
```
chmod +x backup.sh
```

## 使い方
```
./backup.sh
```
## 注意
- バックアップ先のメディア名に空白が入っているとエラーになるため、空白を入れないこと  
- バックアップ先のHDDやSSDの容量が十分であることを確認  
