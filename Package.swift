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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.13.0-1/lwkFFI.xcframework.zip", checksum: "3b3c4d94cf5fd8a2b0277648760efa552c8474c02c2bb237875672c6c2700100"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
