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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz10/lwkFFI.xcframework.zip", checksum: "6da5789e779c8d5b7a2fcf80e938885c4554eda710e048d61972f87c606efd73"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
