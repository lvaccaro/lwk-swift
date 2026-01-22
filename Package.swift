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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.14.0/lwkFFI.xcframework.zip", checksum: "1180b595d847146ab1aaf9c0c1d41ec1317efac5f037c8fdc1fd9bcbc5beb7b6"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
