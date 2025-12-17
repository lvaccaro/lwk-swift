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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.12.8-3/lwkFFI.xcframework.zip", checksum: "add4ddbad69ffc58a3c5879f4302f65c50faf63a35acbbc556116390d7185db8"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
