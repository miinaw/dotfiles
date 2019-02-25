export ZDOTDIR=$HOME

export PATH="/usr/local/bin:$PATH"

# PATH の内容と同期している配列変数 path も使える
path=(
    ~/bin
    $path
)

# もし .zshenv を複数のマシンで共有していて、
# あるマシンには存在するが別のマシンには存在しないパスを PATH に追加したいなら、
# パスの後ろに (N-/) をつけるとよい
# こうすると、パスの場所にディレクトリが存在しない場合、パスが空文字列に置換される
# 詳細は `man zshexpn` の Glob Qualifiers を参照
path=(
    /machine1/only/bin(N-/)
    $path
)

export PATH=~/.local/bin:$PATH
