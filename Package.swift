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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz34/lwkFFI.xcframework.zip", checksum: "bf19c4354ebd4da04a3751c695f328afe65c7d170d43d08d34941c321f1146b1"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
