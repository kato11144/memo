基本コマンド
```sh
docker compose up -d --build

docker compose exec hoge /bin/bash

docker compose down
```

キャッシュの削除
```sh
docker system prune -af --volumes
```
