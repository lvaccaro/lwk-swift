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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz/lwkFFI.xcframework.zip", checksum: "d7dee258e1025238e0044124905ee2f75d48cd42f516cb9116e18e9221f70121"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
