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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.13.0/lwkFFI.xcframework.zip", checksum: "053ab78f804eeb62bb18f46348129a4f862af25c044715d8418b9e0853fc02c9"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
