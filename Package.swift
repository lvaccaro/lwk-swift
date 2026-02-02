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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.14.0-3/lwkFFI.xcframework.zip", checksum: "55f14f0107e6d1dba462d6751f08d8ea342dde6fe15ec4203a72ca7f27866980"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
