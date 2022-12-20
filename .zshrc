autoload -Uz compinit && compinit
fpath=(~/.zsh/completions $fpath)
autoload -U color

precmd() { eval __prompt_command }

parse_git_branch () { 
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\($(echo -ne '\u2387') \1\)/g"; 
}

__prompt_command() {
    local RESULT="$?"

    if [ $RESULT != 0 ]; then
        EXIT='%F{red}⚠%F{default} '
    else 
        EXIT=''
    fi

    PROMPT="%F{magenta}%~ %F{cyan}$(parse_git_branch)"$'\n'"%F{default}${EXIT}%n@%m %% "
    RPROMPT="%F{black}[%h]"
}


alias ls="ls -Gp"
alias lal="ls -al"
alias ll="ls -l"

alias find="noglob find"

alias aun="adb uninstall com.acmeaom.android.myradar"
alias aunp="adb uninstall com.acmeaom.android.myradarpro"

PATH=$PATH:~/.jenv/bin:~/Library/Android/sdk/ndk/23.1.7779620:~/Library/Android/sdk/cmdline-tools/latest:$PATH
eval "$(jenv init -)"
