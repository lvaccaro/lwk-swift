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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz8/lwkFFI.xcframework.zip", checksum: "5808c2e9adff8524c6680e0e437d1bc37624b20fc60d230f8421437c6e773acc"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
