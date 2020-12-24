# shell
## あったら便利そうなシェル’s
### mduch.sh

mkdir + touch command
```sh
mkdir -p hoge/foo
touch hoge/foo/sample.txt
```
```sh
mduch.sh hoge/foo/sample.txt
```

### nextjs-ts-init-prj.sh
Next.jsの最小構成 + TypeScriptの雛形を作るコマンド
以下のコマンドが使える想定
- jq
- yarn
- code(vscodeを開くコマンド)

```sh
nextjs-ts-init-prj.sh ${プロジェクト名}
```

### Tips
パスを通しておくことで
自分の作ったシェルコマンドをどこでも呼び出せる

zsh →　.zshrc
bash → .bash_profile

MacOSの場合
```sh
export PATH =$PATH:/Users/ユーザ名/シェルを入れてるディレクトリ
```