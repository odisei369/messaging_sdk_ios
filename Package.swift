// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MessagingSDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MessagingSDK",
            targets: ["MessagingSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/odisei369/messagingapi_sdk_ios", from: "3.8.0"),
        .package(url: "https://github.com/odisei369/commonui_sdk_ios", from: "6.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "MessagingSDK",
            path: "MessagingSDK.xcframework"),
    ]
)
