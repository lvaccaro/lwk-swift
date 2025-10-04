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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.12.5/lwkFFI.xcframework.zip", checksum: "b7ff7a54f85d589c4dd7524385a6fe0e762d3819340681cb1c9680b57e9ba6bc"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
