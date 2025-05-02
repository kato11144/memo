`wsl`関連
```sh
wsl --install

wsl --update

wsl --version

wsl --shutdown
```

`Ubuntu`関連
```sh
sudo adduser newusername

sudo usermod -aG sudo newusername

sudo passwd newusername

sudo deluser newusername
```

`ssh`関連
```sh
sudo apt install openssh-server

sudo vim /etc/ssh/sshd_config

sudo service ssh start

sudo service ssh status
```

`.DS_Store`の削除
```sh
sudo find / -name ".DS_Store" -delete
```

`EXIF`の抽出
```sh
exiftool -R -a -G1 ./images
```

プロセス関連
```sh
nohup bash -c "time bash run.sh" > output.log 2>&1 &

pgrep -af run.sh

kill {PID}
```

バックアップ
```sh
sudo mkdir /mnt/backup_ssd

sudo mount /dev/sdb /mnt/backup_ssd

sudo rsync -aAXHv --delete --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found"} / /mnt/backup_ssd/ | tee rsync_log.txt

sudo ls /mnt/backup_ssd/

sudo umount /mnt/backup_ssd
```
