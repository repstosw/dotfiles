PROMPT_COMMAND=__prompt_command

parse_git_branch () { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\($(echo -ne '\u2387') \1\)/g"; 
}

__prompt_command() {
    local RESULT="$?"

    if [ $RESULT != 0 ]; then
        EXIT='\[\e[0;31m\]⚠\[\e[0m\] '
    else 
        EXIT=''
    fi

    PS1="\[\e[35m\]\w \[\e[36m\]\$(parse_git_branch)\n${EXIT}\[\e[30m\][\!] \[\e[0m\]\u@\h $ "
}

if [ -f ~/.git-completion.bash ]; then
        . ~/.git-completion.bash
fi

alias ls='ls -Gp'
alias lal='ls -al'
alias ll='ls -l'
alias lc='logcat-color -v time'

alias aun='adb uninstall com.acmeaom.android.myradar'
alias aunp='adb uninstall com.acmeaom.android.myradarpro'

if [ -d ~/Library/Android/sdk ]; then
    SDK="~/Library/Android/sdk"
    NDK="~/Library/Android/ndk"
else 
    SDK="~/android-sdk"
    NDK="~/android-ndk"
fi

PATH=$PATH:~/bin:$SDK/platform-tools:$SDK/tools:$SDK/tools/proguard/bin:$NDK

export LESS="-RXF"
