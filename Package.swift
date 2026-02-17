// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lwk_bindings",
    platforms: [
        .macOS(.v12),
        .iOS(.v13),
    ],
    products: [
        .library(name: "LiquidWalletKit", targets: ["lwkFFI", "LiquidWalletKit"]),
    ],
    targets: [
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.14.0-4/lwkFFI.xcframework.zip", checksum: "dd53c38de41235b71904a39ac475ae00b41932aaa189decd7e0401cbc07254b2"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
