git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
HOST='\033[02;36m\]\h'; HOST=''$HOST
TIME='\033[01;31m\]\t \033[01;32m\]'
LOCATION=' \033[01;34m\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \033[00;33m\]$(git_branch) \[\033[00m\]\$ '
PS1=$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'

#export PS1="\$(parse_git_branch)\u@\h:\w \\$ "
alias ls='ls -Gp'
alias lal='ls -al'
alias ll='ls -l'
alias lc='logcat-color -v time'

if [ -d ~/Library/Android/sdk ]; then
    SDK="~/Library/Android/sdk"
    NDK="~/Library/Android/ndk"
else 
    SDK="~/android-sdk"
    NDK="~/android-ndk"
fi

PATH=$PATH:~/bin:$SDK/platform-tools:$SDK/tools:$NDK

export LESS="-R"

