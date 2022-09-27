// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Deps",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "UiDeps",
            targets: [
                "CHIPageControl",
                "CocoaLumberjack",
                "Kingfisher",
                "SkyFloatingLabelTextField",
                "SnapKit",
                "SVGKit",
            ]
        ),
        .library(
            name: "AppDeps",
            targets: [
                "AlgoliaSearchClient", "Logging",
                "Lottie",
                "SwiftEntryKit", "QuickLayout",
                "Toast",
                "Mixpanel",
                "PubNub",
                "CryptoSwift",
                "Appboy_iOS_SDK", "SDWebImage",
                "OneSignal", "OneSignalCore", "OneSignalExtension", "OneSignalOutcomes",
                "Segment", "Sovran",
                "ViewAnimator",
                "SwiftyBeaver",
                "ObjectMapper",
                "JTAppleCalendar",
                "IQKeyboardManagerSwift",
                "KeychainSwift",
                "Changeset",
                "Frames", "PhoneNumberKit", "CheckoutEventLoggerKit",
                "SwiftLinkPreview",
                "FSCalendar",
                "PromiseKit", "PMKUIKit",
                "SVProgressHUD",
                "PanModal",
                "Lightbox", "Imaginary", "Cache",
                "SwiftyCam",
                "DZNEmptyDataSet",
                "Pulley",
                "Closures",
                "WebLinkPreview",
                "Rswift",
            ]
        ),
        .library(
            name: "PushDeps",
            targets: [
                "Mixpanel",
                "OneSignal", "OneSignalCore", "OneSignalExtension", "OneSignalOutcomes",
                "CTNotificationService",
            ]
        )
    ],
    targets: [
        // Push deps
        .binaryTarget(
            name: "CTNotificationService",
            path: "Frameworks/CTNotificationService.xcframework.zip"
        ),

        // Ui Deps
        .binaryTarget(
            name: "CHIPageControl",
            path: "Frameworks/CHIPageControl.xcframework.zip"
        ),
        .binaryTarget(
            name: "CocoaLumberjack",
            path: "Frameworks/CocoaLumberjack.xcframework.zip"
        ),
        .binaryTarget(
            name: "Kingfisher",
            url: "https://github.com/onevcat/Kingfisher/releases/download/7.3.2/Kingfisher-7.3.2.zip",
            checksum: "3abc9666b2cf321cc5b652f5c2376c62a486ce975b2663bf35b93cb4dd2061cd"
        ),
        .binaryTarget(
            name: "SkyFloatingLabelTextField",
            path: "Frameworks/SkyFloatingLabelTextField.xcframework.zip"
        ),
        .binaryTarget(
            name: "SnapKit",
            path: "Frameworks/SnapKit.xcframework.zip"
        ),
        .binaryTarget(
            name: "SVGKit",
            path: "Frameworks/SVGKit.xcframework.zip"
        ),

        // App deps
        .binaryTarget(
            name: "AlgoliaSearchClient",
            path: "Frameworks/AlgoliaSearchClient.xcframework.zip"
        ),
        .binaryTarget(
            name: "Logging",
            path: "Frameworks/Logging.xcframework.zip"
        ),
        .binaryTarget(
            name: "Lottie",
            path: "Frameworks/Lottie.xcframework.zip"
        ),
        .binaryTarget(
            name: "QuickLayout",
            path: "Frameworks/QuickLayout.xcframework.zip"
        ),
        .binaryTarget(
            name: "SwiftEntryKit",
            path: "Frameworks/SwiftEntryKit.xcframework.zip"
        ),
        .binaryTarget(
            name: "Toast",
            path: "Frameworks/Toast.xcframework.zip"
        ),
        .binaryTarget(
            name: "Mixpanel",
            path: "Frameworks/Mixpanel.xcframework.zip"
        ),
        .binaryTarget(
            name: "PubNub",
            path: "Frameworks/PubNub.xcframework.zip"
        ),
        .binaryTarget(
            name: "CryptoSwift",
            url: "https://github.com/krzyzanowskim/CryptoSwift/releases/download/1.5.1/CryptoSwift.xcframework.zip",
            checksum: "b251155dce1e5f705f40bf1d531d56851b90f1907a8ff07d0e0c471f12316515"
        ),
        .binaryTarget(
            name: "Appboy_iOS_SDK",
            url: "https://github.com/Appboy/appboy-ios-sdk/releases/download/4.5.0/Appboy_iOS_SDK.xcframework.zip",
            checksum: "c2571c055a3e8ba8394e424443be7b3d8543280040c019b413cdce37e240fb46"
        ),
        .binaryTarget(
            name: "SDWebImage",
            path: "Frameworks/SDWebImage.xcframework.zip"
        ),
        .binaryTarget(
            name: "OneSignal",
            url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.11.2/OneSignal.xcframework.zip",
            checksum: "e9cf7ebef15ab8757e6e9c95d359998f018f4de381944f4cc62bc4c25d1cdb9d"
        ),
        .binaryTarget(
            name: "OneSignalCore",
            url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.11.2/OneSignalCore.xcframework.zip",
            checksum: "6378ad0fdba2e485274b87b192d0c6419f37e92bd33d9a2f7993b9c5e137b94f"
        ),
        .binaryTarget(
            name: "OneSignalOutcomes",
            url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.11.2/OneSignalOutcomes.xcframework.zip",
            checksum: "d1345bda87e3f0b4f50cc4f31de7c7f8a6be38e7b768d7ce4e599dc6e6f467ba"
        ),
        .binaryTarget(
            name: "OneSignalExtension",
            url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.11.2/OneSignalExtension.xcframework.zip",
            checksum: "1725ed62c9a3630caccb04e6c52db02348719428e6a3eca6b1fec8ee35828162"
        ),
        .binaryTarget(
            name: "Segment",
            path: "Frameworks/Segment.xcframework.zip"
        ),
        .binaryTarget(
            name: "Sovran",
            path: "Frameworks/Sovran.xcframework.zip"
        ),
        .binaryTarget(
            name: "ViewAnimator",
            path: "Frameworks/ViewAnimator.xcframework.zip"
        ),
        .binaryTarget(
            name: "SwiftyBeaver",
            path: "Frameworks/SwiftyBeaver.xcframework.zip"
        ),
        .binaryTarget(
            name: "ObjectMapper",
            path: "Frameworks/ObjectMapper.xcframework.zip"
        ),
        .binaryTarget(
            name: "JTAppleCalendar",
            path: "Frameworks/JTAppleCalendar.xcframework.zip"
        ),
        .binaryTarget(
            name: "IQKeyboardManagerSwift",
            path: "Frameworks/IQKeyboardManagerSwift.xcframework.zip"
        ),
        .binaryTarget(
            name: "KeychainSwift",
            path: "Frameworks/KeychainSwift.xcframework.zip"
        ),
        .binaryTarget(
            name: "Changeset",
            path: "Frameworks/Changeset.xcframework.zip"
        ),
        .binaryTarget(
            name: "PhoneNumberKit",
            path: "Frameworks/PhoneNumberKit.xcframework.zip"
        ),
        .binaryTarget(
            name: "Frames",
            path: "Frameworks/Frames.xcframework.zip"
        ),
        .binaryTarget(
            name: "CheckoutEventLoggerKit",
            url: "https://github.com/checkout/checkout-event-logger-ios-framework/releases/download/1.2.0/CheckoutEventLoggerKit.xcframework.zip",
            checksum: "1af549af2414f6ac36f5c03d74c5c49f1c5d6378d0b560e7e4bdd49d64596a31"
        ),
        .binaryTarget(
            name: "SwiftLinkPreview",
            path: "Frameworks/SwiftLinkPreview.xcframework.zip"
        ),
        .binaryTarget(
            name: "FSCalendar",
            path: "Frameworks/FSCalendar.xcframework.zip"
        ),
        .binaryTarget(
            name: "PromiseKit",
            path: "Frameworks/PromiseKit.xcframework.zip"
        ),
        .binaryTarget(
            name: "SVProgressHUD",
            path: "Frameworks/SVProgressHUD.xcframework.zip"
        ),
        .binaryTarget(
            name: "PMKUIKit",
            path: "Frameworks/PMKUIKit.xcframework.zip"
        ),
        .binaryTarget(
            name: "PanModal",
            path: "Frameworks/PanModal.xcframework.zip"
        ),
        .binaryTarget(
            name: "Lightbox",
            path: "Frameworks/Lightbox.xcframework.zip"
        ),
        .binaryTarget(
            name: "SwiftyCam",
            path: "Frameworks/SwiftyCam.xcframework.zip"
        ),
        .binaryTarget(
            name: "Imaginary",
            path: "Frameworks/Imaginary.xcframework.zip"
        ),
        .binaryTarget(
            name: "Cache",
            path: "Frameworks/Cache.xcframework.zip"
        ),
        .binaryTarget(
            name: "Pulley",
            path: "Frameworks/Pulley.xcframework.zip"
        ),
        .binaryTarget(
            name: "DZNEmptyDataSet",
            path: "Frameworks/DZNEmptyDataSet.xcframework.zip"
        ),
        .binaryTarget(
            name: "Closures",
            path: "Frameworks/Closures.xcframework.zip"
        ),
        .binaryTarget(
            name: "WebLinkPreview",
            path: "Frameworks/WebLinkPreview.xcframework.zip"
        ),
        .binaryTarget(
            name: "Rswift",
            path: "Frameworks/Rswift.xcframework.zip"
        ),
    ]
)
