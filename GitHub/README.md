初期設定
```sh
git config --global user.name "ユーザー名"

git config --global user.email "メールアドレス"

git config --global init.defaultBranch main

git config -l

ssh-keygen -t ed25519
```

`~/.ssh/config`の設定

---

ブランチ関連
```sh
git branch

git branch -a

git checkout {commit-id}

git checkout {branch-name}

git checkout -b {new_branch_name}

git branch -m {new_branch_name}

git branch -d {branch_name}

git branch -D {branch_name}

git push origin --delete {remote_branch_name}
```

タグ関連
```sh
git tag

git tag {tag-name}

git tag -d {tag-name}

git push origin {tag-name}

git push origin --delete {tag-name}
```

状態復元
```sh
git reset --hard

git reset --hard {commit-id}
```

リモート追跡の管理
```sh
git fetch -p

git fetch --all
```

最新状態の同期
```sh
git fetch origin

git reset --hard origin/main
```

一時保存
```sh
git stash -u

git stash list

git stash apply stash@{0}

git stash drop stash@{0}

git stash clear
```

コミット関連
```sh
git rebase -i --root

git push --force
```
