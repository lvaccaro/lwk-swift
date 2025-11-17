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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz12/lwkFFI.xcframework.zip", checksum: "39ac7979d6d2335646027cac09a5d07fdc08e2bc58a0264e5863ffedd2056f2e"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
