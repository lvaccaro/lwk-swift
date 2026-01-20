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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/0.13.0-2/lwkFFI.xcframework.zip", checksum: "08e97a5fffd10513f5e6c02d532e42a40e894733f8bbc65e6072a4a5686288b8"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
