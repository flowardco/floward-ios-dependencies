import ProjectDescription

let project = Project(
    name: "App",
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            dependencies: [
                // Ui deps
                .external(name: "SkyFloatingLabelTextField"),
                .external(name: "SnapKit"),
                .external(name: "CHIPageControl"),
                .external(name: "SVGKit"),

                // App deps
                .external(name: "Lottie"),
                .external(name: "Toast"),
                .external(name: "SwiftEntryKit"),
                .external(name: "AlgoliaSearchClient"),
                .external(name: "Mixpanel"),
                .external(name: "PubNub"),
                .external(name: "SDWebImage"),               
                .external(name: "Segment"),
                .external(name: "ViewAnimator"),
                .external(name: "SwiftyBeaver"),
                .external(name: "ObjectMapper"),
                .external(name: "JTAppleCalendar"),
                .external(name: "IQKeyboardManagerSwift"),
                .external(name: "KeychainSwift"),
                .external(name: "Changeset"),
                .external(name: "PhoneNumberKit"),
                .external(name: "Frames"),
                .external(name: "SwiftLinkPreview"),
                .external(name: "FSCalendar"),
                .external(name: "PromiseKit"),
                .external(name: "PMKUIKit"),
                .external(name: "SVProgressHUD"),
                .external(name: "PanModal"),
                .external(name: "Lightbox"),
                .external(name: "Imaginary"),
                .external(name: "Cache"),
                .external(name: "SwiftyCam"),
                .external(name: "Pulley"),
                .external(name: "WebLinkPreview"),
                .external(name: "DZNEmptyDataSet"),
                .external(name: "Closures"),
                .external(name: "Rswift"),
                
                // Push deps
                .external(name: "CTNotificationService"),
            ]
        )
    ]
)
