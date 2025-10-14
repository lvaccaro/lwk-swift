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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz2/lwkFFI.xcframework.zip", checksum: "c8eb8e5f90321bbe6c28355bff8651ce7553fdcb8e6bad422a1a303654b0493f"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
