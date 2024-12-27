##!/bin/sh

##Build
xcrun xcodebuild docbuild \
    -workspace iOS_Restructure_Project.xcworkspace \
    -scheme SIT \
    -destination 'generic/platform=iOS Simulator' \
    -derivedDataPath "$PWD/.derivedData"
    
##Convert DocC
xcrun docc process-archive transform-for-static-hosting \
    "$PWD/.derivedData/Build/Products/SIT-iphonesimulator/App SIT.doccarchive" \
    --output-path ".docs" \
    --hosting-base-path ""

echo '<script>window.location.href += "/documentation/app-sit"</script>' > .docs/index.html

