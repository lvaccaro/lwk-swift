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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz9/lwkFFI.xcframework.zip", checksum: "ef46ef2116bdb5484b4d0f16e3f1a738e1c0d4ac981a154293086ef2571cd5c2"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
