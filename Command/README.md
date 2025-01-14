`Docker`関連
```sh
docker compose up -d --build

docker compose exec hoge /bin/bash

docker compose down
```

`Ubuntu`関連
```sh
sudo adduser newusername

sudo usermod -aG sudo newusername

sudo passwd newusername

sudo deluser newusername
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
