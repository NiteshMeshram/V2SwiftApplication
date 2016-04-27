#!/bin/sh

# Simple iOS build script
# Written by Aron Bury, 29/11/2011

#appname="V2TravisSwifRND"
appname="V2SwiftApplication"
target_name="$V2SwiftApplication"
sdk="iphoneos"
certificate="iPhone Distribution: V2Solutions, Inc."
PROFILE_NAME="V2Inc_Universal_Disribution_Swift_Support"
PROVISIONING_PROFILE="$HOME/Library/MobileDevice/Provisioning Profiles/$PROFILE_NAME.mobileprovision"


# To use as a fixed script use the first project_dir varirable.
# If you are including it as a build step with Hudson, use the second variable passing in $WORKSPACE as the variable


#/Users/nitesh.meshram/Documents/v2Apps/V2SwiftApplication
project_dir="$HOME/Documents/v2Apps/$appname"

#project_dir="$HOME/Documents/v2Apps/$appname"
#projet_dir="$1/$appname"

build_location="$HOME/Desktop/SignAndBuild/Builds/$appname"
#/Users/nitesh.meshram/Desktop/SignAndBuild

#Create folder location for build files if they dont exist
if [ ! -d "$build_location" ]; then
mkdir -p "$build_location"
fi

cd "$project_dir"

xcodebuild -target "$appname" OBJROOT="$build_location/obj.root" SYMROOT="$build_location/sym.root"

## command to package the appliacation and create the .ipa file
#xcrun -log -sdk iphoneos PackageApplication "$OUTPUTDIR/$APP_NAME.app" -o "$OUTPUTDIR/$APP_NAME.ipa" -sign "$DEVELOPER_NAME" -embed "$PROVISIONING_PROFILE"



# ==== xcrun -sdk iphoneos PackageApplication -v "$build_location/sym.root/Release-iphoneos/$appname.app" -o "$build_location/$appname.ipa" --sign "$certificate"

#xcrun -sdk iphoneos PackageApplication -v "$build_location/sym.root/Release-iphoneos/$appname.app" -o "$build_location/$appname.ipa" --sign "$certificate" --embed "$PROVISIONING_PROFILE"


#/usr/bin/xcrun -sdk iphoneos PackageApplication -v "$build_location/sym.root/Release-iphoneos/$appname.app" -o "$build_location/$appname.ipa" --sign "$certificate" --embed "$PROVISIONING_PROFILE"

xcrun -log -sdk iphoneos PackageApplication "$build_location/sym.root/Release-iphoneos/$appname.app" -o "$build_location/$appname.ipa" -sign "$certificate" -embed "$PROVISIONING_PROFILE"


