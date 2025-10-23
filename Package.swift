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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz7/lwkFFI.xcframework.zip", checksum: "ddbd61375d807088f5558aaacff5786fed490333a9b3f1ef789338913e0a743f"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
