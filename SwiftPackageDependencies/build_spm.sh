arr="AlgoliaSearchClient
    CHIPageControl
    CTNotificationService
    Changeset
    Closures
    IQKeyboardManagerSwift
    JTAppleCalendar
    KeychainSwift
    Kingfisher
    Logging
    Lottie
    Mixpanel
    ObjectMapper
    PanModal
    PubNub
    QuickLayout
    SVGKit
    Segment
    SkyFloatingLabelTextField
    SnapKit
    Sovran
    SwiftEntryKit
    SwiftLinkPreview
    SwiftyBeaver
    Toast
    ViewAnimator"
#for xxx in $(swift create-xcframework --list-products | awk -F 'Additional available targets:' '{print $1}' | grep -o '\w*')
for xxx in $(echo $arr | grep -o '\w*')
do
    swift create-xcframework --platform ios --no-debug-symbols --configuration release --zip --clean $xxx
    # problem with --stack-evolution
done
