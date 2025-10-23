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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz6/lwkFFI.xcframework.zip", checksum: "86b6370b475258610afec561760577c5e90a47d67b13f246fbf7412d1005847e"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
