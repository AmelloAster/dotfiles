alias proxy='export http_proxy=127.0.0.1:7890;export https_proxy=$http_proxy'
alias unProxy='unset http_proxy;unset https_proxy'

. "$HOME/.cargo/env"
