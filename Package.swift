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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz11/lwkFFI.xcframework.zip", checksum: "b285af8bc3529813f8002d91a0fa966226939bd4697c1fed6abf84b9cf870308"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
