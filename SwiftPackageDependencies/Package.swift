// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Dependencies",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "Dependencies", targets: ["Dependencies"])
    ],
    dependencies: [
        // MARK: - UI Dependencies
        .package(url: "https://github.com/flowardco/SkyFloatingLabelTextField", exact: "4.0.0"),
        .package(url: "https://github.com/SnapKit/SnapKit", exact: "5.0.1"),
        .package(url: "https://github.com/saadaamir/CHIPageControl", exact: "0.3.1"),
        .package(url: "https://github.com/SVGKit/SVGKit", exact: "3.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", exact: "7.3.2"),

        // MARK: - App Dependencies
        .package(url: "https://github.com/airbnb/lottie-ios", exact: "3.4.3"),
        .package(url: "https://github.com/scalessec/Toast-Swift", exact: "5.0.1"),
        .package(url: "https://github.com/huri000/SwiftEntryKit", exact: "1.2.7"),
        .package(url: "https://github.com/algolia/algoliasearch-client-swift", exact: "8.15.1"),
        .package(url: "https://github.com/mixpanel/mixpanel-swift", exact: "3.5.1"),
        .package(url: "https://github.com/pubnub/swift", exact: "3.1.3"),
        .package(url: "https://github.com/segmentio/analytics-swift", exact: "1.3.1"),
        .package(url: "https://github.com/marcosgriselli/ViewAnimator", exact: "3.1.0"),
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", exact: "1.9.6"),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper", exact: "4.2.0"),
        .package(url: "https://github.com/patchthecode/JTAppleCalendar", exact: "8.0.4"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager", exact: "6.5.10"),
        .package(url: "https://github.com/evgenyneu/keychain-swift", exact: "20.0.0"),
        .package(url: "https://github.com/osteslag/Changeset", exact: "3.2.0"),
        .package(url: "https://github.com/LeonardoCardoso/SwiftLinkPreview", exact: "3.4.0"),
        .package(url: "https://github.com/slackhq/PanModal", exact: "1.2.7"),
        .package(url: "https://github.com/vhesener/Closures", exact: "0.7.0"),

        // MARK: - Notification Dependencies
        .package(url: "https://github.com/CleverTap/CTNotificationService", exact: "0.1.5"),
    ],
    targets: [
        .target(
            name: "Dependencies",
            dependencies: [
                "SkyFloatingLabelTextField",
                "SnapKit",
                "CHIPageControl",
                "SVGKit",
                "Kingfisher",
                .product(name: "Lottie", package: "lottie-ios"),
                .product(name: "Toast", package: "Toast-Swift"),
                "SwiftEntryKit",
                .product(name: "AlgoliaSearchClient", package: "algoliasearch-client-swift"),
                .product(name: "Mixpanel", package: "mixpanel-swift"),
                .product(name: "PubNub", package: "swift"),
                .product(name: "Segment", package: "analytics-swift"),
                "ViewAnimator",
                "SwiftyBeaver",
                "ObjectMapper",
                "JTAppleCalendar",
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "KeychainSwift", package: "keychain-swift"),
                "Changeset",
                "SwiftLinkPreview",
                "PanModal",
                "Closures",
                "CTNotificationService",
            ]
        ),
    ]
)
