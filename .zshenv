eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -d ~/Library/Android/sdk ]; then
    SDK="$HOME/Library/Android/sdk"
    NDK="$HOME/Library/Android/ndk"
else 
    SDK="$HOME/android-sdk"
    NDK="$HOME/android-ndk"
fi

PATH=$PATH:~/bin:$SDK/platform-tools:$SDK/tools:$SDK/tools/proguard/bin:$NDK
