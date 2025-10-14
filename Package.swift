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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz3/lwkFFI.xcframework.zip", checksum: "bf413f78c138a8f8b2b6d3cfe0d0efb611d6924fd9dabcd5b689b609e33a5486"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
