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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz_patch/lwkFFI.xcframework.zip", checksum: "12084ebbe24febf77cd59663623ad97b241196bd97f4a65998bf1f127c5e0024"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
