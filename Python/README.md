pyenvの設定
```sh
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc

echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc

echo 'eval "$(pyenv init -)"' >> ~/.zshrc

source ~/.zshrc
```

バージョン管理
```sh
pyenv install --list

pyenv install 3.10.10

pyenv versions

pyenv global 3.10.10

pyenv local 3.10.10
```

パッケージ管理
```sh
pip3 freeze > requirements.txt

pip3 install -r requirements.txt

pip3 freeze | xargs pip uninstall -y
```

仮装環境
```sh
python3 -m venv .venv

. .venv/bin/activate

deactivate
```
