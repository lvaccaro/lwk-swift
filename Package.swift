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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.16.0-1/lwkFFI.xcframework.zip", checksum: "2318891fb51ed1e727d0eda467c3de0a32656c9dc3daa32c351e9ba36380a875"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
