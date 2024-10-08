#!/bin/bash
# Revanced build
source ./src/build/utils.sh

#################################################

# Download requirements
dl_gh "revanced-patches revanced-integrations" "revanced" "prerelease"
dl_gh "revanced-cli" "revanced" "latest"

##################################################################################################

# Patch Facebook:
# Arm64-v8a
get_patches_key "facebook"
get_apk "com.facebook.katana" "facebook-arm64-v8a-beta" "facebook" "facebook-2/facebook/facebook" "arm64-v8a" "nodpi" "Android 11+"
patch "facebook-arm64-v8a-beta" "revanced"

#################################################

# Patch Twitch:
get_patches_key "twitch"
get_apk "tv.twitch.android.app" "twitch-beta" "twitch" "twitch-interactive-inc/twitch/twitch"
patch "twitch-beta" "revanced"

#################################################

# Patch Reddit:
get_patches_key "reddit"
version="2024.17.0"
get_apk "com.reddit.frontpage" "reddit-beta" "reddit" "redditinc/reddit/reddit"
patch "reddit-beta" "revanced"

#################################################
