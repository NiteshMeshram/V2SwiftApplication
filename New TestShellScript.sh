#!/bin/sh

# Simple iOS build script
# Written by Aron Bury, 29/11/2011

appname="V2SwiftApplication"
target_name="$V2SwiftApplication"
sdk="iphoneos"
certificate="iPhone Distribution: V2Solutions, Inc."

profilePath="/Users/nitesh.meshram/Documents/v2Apps/POCV2/V2SwiftApplication/scripts/profile/Distribution_Swift.mobileprovision"
workspacefile="V2SwiftApplication.xcworkspace"

# To use as a fixed script use the first project_dir varirable.
# If you are including it as a build step with Hudson, use the second variable passing in $WORKSPACE as the variable
#project_dir="$HOME/Documents/apps/$appname"
#projet_dir="$1/$appname"
build_location="$HOME/Builds/$appname"

#Create folder location for build files if they dont exist
if [ ! -d "$build_location" ]; then
mkdir -p "$build_location"
fi

cd "$project_dir"

#xcodebuild -target "$appname" OBJROOT="$build_location/obj.root" SYMROOT="$build_location/sym.root"
#
#xcrun -sdk iphoneos PackageApplication -v "$build_location/sym.root/DEV-iphoneos/$appname.app" -o "$build_location/$appname.ipa" --sign "$certificate"

xcodebuild -workspace "$workspacefile" -scheme "V2SwiftApplication.DEV" -sdk "$sdk" -configuration "Release" CODE_SIGN_IDENTITY="$certificate" PROVISIONING_PROFILE="$profilePath"

#OTHER_CODE_SIGN_FLAGS="--keychain *keyChainName*"


