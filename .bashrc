export PS1="\$(parse_git_branch)\u@\h:\w \\$ "
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

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo -e "[${BRANCH}] "
	else
		echo ""
	fi
}
