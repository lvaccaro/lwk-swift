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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.12.5-1/lwkFFI.xcframework.zip", checksum: "a995b7ad6beff72bd39efd173b36e96af0c00e044209add9a9b84df3543930e8"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
