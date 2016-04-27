#!/bin/sh

##/Users/nitesh.meshram/Documents/v2Apps/POCV2/V2SwiftApplication/V2SwiftApplication.xcodeproj
export APP_FULLNAME=SwiftAPP

#APP_PROFILE_PATH : GITHUB repository relative path for the provisioning profile.
#                   Standard file already available in respective folder.
#                   DO not change until scripts or profile folder name changed.
export APP_PROFILE_PATH="$PWD/scripts/profile/"
#APP_SCRIPT_PATH : Shell script path which is referred internally. Do not change until scripts folder name changed.
export APP_SCRIPT_PATH="$PWD/scripts/certs/"

#APP_NAME : Name of the .app and .ipa file
export APP_NAME="V2TravisSwifRND"
#APP_WORKSPACE_PATH : Relative path of the .xcworkspace file
export APP_WORKSPACE_PATH="./V2SwiftApplication.xcworkspace"
#APP_SCHEME : Name of the xCode scheme. It is assume that all the scheme has the same name.
#             It is automatically suffixed by scheme (DEV/QA/UAT)
export APP_SCHEME="V2SwiftApplication"
#Settings For Getting Pivotal Notes : Settings For Getting Pivotal Notes
export INFOPLIST_FILE="$PWD/V2SwiftApplication/Info.plist"
#- PIVOTAL_PROJECT_ID=1114232
#- PIVOTAL_TOKEN='763aa9881c2d64966f6c17be60926221'
export OUTPUT_FILE_NAME='jsonresponse.text'

# HOCKEY_APP_ID & HOCKEY_APP_TOKEN : To configure the Hockey App Id and Token for uploading the build
export DEV_HOCKEY_APP_ID="8b8b2bcd857148ddaa5d6428c5212874"
export DEV_HOCKEY_APP_TOKEN="9a172758bdfe4fe4b10299bfc9ea519a"


export LABEL_ID=''
export ALL_STORIES_WITH_ID=''
export OUTPUT_FILE_NAME= 'TestReleaseNotes' #'./release_notes/V2 - LT - MyLendingTree - iOS-'


# APP_BUILD_ENV : To configure the build scheme environment for defining the app build path
export APP_BUILD_ENV=DEV #Default Value for APP_BUILD_ENV





#*****************************Swift Certificates**********************

#DEVELOPER_NAME : must have the name appeared on the certificate used. Generally this should not be changed.
export DEVELOPER_NAME="iPhone Distribution: V2Solutions, Inc."

#APP_APPLE_CERTIFICATE : Apple standard certificate. Do not changed until required.
export APP_APPLE_CERTIFICATE="apple.cer"

#APP_TEAM_AGENT_DISTRIBUTION_CERTIFICATE : Certificated generated from Apple portal.
#                                          Do not change until certificate is expired / regenerated
export APP_TEAM_AGENT_DISTRIBUTION_CERTIFICATE="Certificates_Swift.cer"
#APP_TEAM_DISTRIBUTION_PRIVATE_KEYS :  Private key generated using key chain. Do not change until regenerated.
export APP_TEAM_DISTRIBUTION_PRIVATE_KEYS="Key_Swift.p12"

#3. PROFILE_NAME : Certificate profile name. Generally this should not be changed
export PROFILE_NAME="Distribution_Swift"

#*****************************Swift Certificates**********************

