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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz5/lwkFFI.xcframework.zip", checksum: "8801089765c29c9b53829129b7c8e734932bf8962b80eb94a523c6450a2c1c1e"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
