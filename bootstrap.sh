
# # BRANCH 变量如果不存在或长度为零，那么声明这个变量 
# [ -z "${BRANCH}" ] && export BRANCH="master"

# # 判断当前目录下是否存在 macbootstrap 文件，如果存在则删除
# if [[ -e ~/.macbootstrap ]]; then
#   rm -rf ~/.macbootstrap
# fi

# #判断 brew 可执行文件不存在则安装 brew 并将源地址更改为清华源
# if [[ ! -e /usr/local/bin/brew ]]; then
#     # chcange source && avoid prompt && quiet install
#     /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | sed 's/https:\/\/github.com\/Homebrew\/brew/git:\/\/mirrors.ustc.edu.cn\/brew.git/g' | sed 's/https:\/\/github.com\/Homebrew\/homebrew-core/git:\/\/mirrors.ustc.edu.cn\/homebrew-core.git/g' | sed 's/\"fetch\"/\"fetch\", \"-q\"/g')" < /dev/null > /dev/null

#     # Change source
#     cd "$(brew --repo)"
#     git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git

#     cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
#     git remote set-url origin https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git

#     export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
# else
#     echo "You have installed brew"
# fi

# # 使用 brew 安装 git
# if [[ ! -e /usr/bin/git ]]; then
#     brew install git
# else
#     echo "You have installed git"
# fi

# # #将 Dock 设置 7列，8行
# # defaults write com.apple.dock springboard-rows -int 7
# # defaults write com.apple.dock springboard-columns-int 8 
# # killall Dock

# # 将ssh 配置文件复制到ssh目录中
# if [[ ! -e ~/.ssh/config ]]; then
#     cp ./config ~/.ssh/config
#     echo "ssh-config 复制成功"
# else
#     echo "ssh-config already exist"
# fi

# # 覆盖host文件
# cp ./hosts /etc/hosts