// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NStackSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "nstack-ios-sdk",
            targets: ["nstack-ios-sdk"]),
    ],
    dependencies: [
        
        .package(name: "LocalizationManager", url: "https://github.com/nodes-ios/TranslationManager", from: "3.1.2")
        
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
            
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "nstack-ios-sdk",
            dependencies: [
                "LocalizationManager"
            ]),
        .testTarget(
            name: "nstack-ios-sdkTests",
            dependencies: ["nstack-ios-sdk"]),
    ]
)
