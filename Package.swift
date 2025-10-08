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
        .binaryTarget(name: "lwkFFI", url: "https://github.com/lvaccaro/lwk-swift/releases/download/boltz1/lwkFFI.xcframework.zip", checksum: "0807380800cb1fe609c19a96e672887db4623e7af36070dd6db8244b929370d2"),
        .target(name: "LiquidWalletKit", dependencies: ["lwkFFI"]),
    ]
)
