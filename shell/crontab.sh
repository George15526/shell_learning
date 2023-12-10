#!/bin/bash

# 先準備一個含 timestamp 的資料夾吧，方便做檔案的管理
foldername=codimd_backup_$(date +%Y%m%d%H%M)
mkdir -p -- ~/${foldername}
# 接下來複製整個資料夾，不過因為權限問題，所以我 cp 指令前加上了 sudo，之後在用 chown 更改資料夾權限。
sudo cp -r -p ~/codimd-container/ ~/${foldername}/
sudo chown -R $(whoami) ~/${foldername}/codimd-container/
# 因為這是針對 CodiMD 的備份，所以除了一般資料夾的複製外，我也執行了 CodiMD 的 Backup 指令。
cd ~/codimd-container
/usr/local/bin/docker-compose exec -T database pg_dump hackmd -U hackmd  > ~/${foldername}/backup.sql
# 最後把所有備份的東西壓成一份壓縮檔，然後把壓縮檔統一放到個資料夾下 e.g. ~/codimd_backup，備份階段就完成了
tar zcvf ${foldername}.tgz ${foldername}