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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz2/lwkFFI.xcframework.zip", checksum: "30e73018a7abaef99ed19271618fc92a2daae07600b4fc52cff143547158420e"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
