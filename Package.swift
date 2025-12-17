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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.12.8-2/lwkFFI.xcframework.zip", checksum: "2e3be1166730f5cd588a02b0d4ccb0a2326b20dba784111428526a30e3c00956"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
