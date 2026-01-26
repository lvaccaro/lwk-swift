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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/Blockstream/lwk-swift/releases/download/0.14.0-1/lwkFFI.xcframework.zip", checksum: "891a46e95b97e0896000291aba9930c7e568184d1f63cd6a03fd21e8fc4f33d1"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
