eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -d ~/Library/Android/sdk ]; then
    SDK="~/Library/Android/sdk"
    NDK="~/Library/Android/ndk"
else 
    SDK="~/android-sdk"
    NDK="~/android-ndk"
fi

PATH=$PATH:~/bin:$SDK/platform-tools:$SDK/tools:$SDK/tools/proguard/bin:$NDK
PATH=$PATH:~/.jenv/bin:$PATH
eval "$(jenv init -)"
