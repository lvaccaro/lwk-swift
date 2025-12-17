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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.12.8-1/lwkFFI.xcframework.zip", checksum: "61cf47d527b5e274bfdb607e2f55b84201258a056f8ae48d2373db0ed097072c"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
