// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "ReviewPromptKit",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "ReviewPromptKit",
            targets: ["ReviewPromptKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", .upToNextMajor(from: "0.0.0")),
    ],
    targets: [
        .target(
            name: "ReviewPromptKit",
            dependencies: [
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
            ]),
        .testTarget(
            name: "ReviewPromptKitTests",
            dependencies: ["ReviewPromptKit"]),
    ]
)
