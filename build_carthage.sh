# carthage.sh
# Usage example: ./carthage.sh build --platform iOS

set -euo pipefail

xcconfig=$(mktemp /tmp/static.xcconfig.XXXXXX)
trap 'rm -f "$xcconfig"' INT TERM HUP EXIT
echo 'BUILD_LIBRARY_FOR_DISTRIBUTION = YES' >> $xcconfig

export XCODE_XCCONFIG_FILE="$xcconfig"
carthage update --platform iOS --use-xcframeworks
