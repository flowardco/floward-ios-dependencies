import ProjectDescription

let dependencies = Dependencies(
    carthage: [
        .github(path: "SDWebImage/SDWebImage", requirement: .exact("5.13.2")), // AppBoy requires SDWebImage as an dynamic framework
        .github(path: "checkout/frames-ios", requirement: .exact("3.5.3")),
        .github(path: "MoathOthman/FSCalendar", requirement: .revision("1d0d8156ca388e167a28a55e3d9a777ab0de75db")),
        .github(path: "mxcl/PromiseKit", requirement: .exact("6.18.1")),
        .github(path: "PromiseKit/UIKit", requirement: .exact("3.1.0")),
        .github(path: "SVProgressHUD/SVProgressHUD", requirement: .exact("2.2.5")),
        .github(path: "hyperoslo/Lightbox", requirement: .exact("2.5.0")),
        .github(path: "Awalz/SwiftyCam", requirement: .exact("4.0.0")),
        .github(path: "52inc/Pulley", requirement: .revision("a3281b50fab4b688e2422b2a821e7a9b2e4f8a5c")),
        .github(path: "philip-bui/web-link-preview", requirement: .exact("1.0.1")),
        .github(path: "dzenbot/DZNEmptyDataSet", requirement: .exact("1.8.1")),
        .github(path: "mac-cain13/R.swift.Library", requirement: .exact("6.1.0")),
    ],

    swiftPackageManager: [
        // UI deps
        .remote(url: "https://github.com/flowardco/SkyFloatingLabelTextField", requirement: .exact("4.0.0")),
        .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .exact("5.0.1")),
        .remote(url: "https://github.com/saadaamir/CHIPageControl", requirement: .exact("0.3.1")),
        .remote(url: "https://github.com/SVGKit/SVGKit", requirement: .exact("3.0.0")),

        // App deps
        .remote(url: "https://github.com/airbnb/lottie-ios.git", requirement: .exact("3.4.3")),
        .remote(url: "https://github.com/scalessec/Toast-Swift", requirement: .exact("5.0.1")),
        .remote(url: "https://github.com/huri000/SwiftEntryKit.git", requirement: .exact("1.2.7")),
        .remote(url: "https://github.com/algolia/algoliasearch-client-swift", requirement: .exact("8.15.1")),
        .remote(url: "https://github.com/mixpanel/mixpanel-swift.git", requirement: .exact("3.5.1")),
        .remote(url: "https://github.com/pubnub/swift.git", requirement: .exact("3.1.3")),
        .remote(url: "https://github.com/segmentio/analytics-swift.git", requirement: .exact("1.3.1")),
        .remote(url: "https://github.com/marcosgriselli/ViewAnimator", requirement: .exact("3.1.0")),
        .remote(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", requirement: .exact("1.9.6")),
        .remote(url: "https://github.com/tristanhimmelman/ObjectMapper", requirement: .exact("4.2.0")),
        .remote(url: "https://github.com/patchthecode/JTAppleCalendar", requirement: .exact("8.0.4")),
        .remote(url: "https://github.com/hackiftekhar/IQKeyboardManager", requirement: .exact("6.5.10")),
        .remote(url: "https://github.com/evgenyneu/keychain-swift", requirement: .exact("20.0.0")),
        .remote(url: "https://github.com/osteslag/Changeset", requirement: .exact("3.2.0")),
        .remote(url: "https://github.com/LeonardoCardoso/SwiftLinkPreview", requirement: .exact("3.4.0")),
        .remote(url: "https://github.com/slackhq/PanModal", requirement: .exact("1.2.7")),
        .remote(url: "https://github.com/vhesener/Closures", requirement: .exact("0.7.0")),

        // Push deps
        .remote(url: "https://github.com/CleverTap/CTNotificationService", requirement: .exact("0.1.5")),
    ],
    platforms: [.iOS]
)
