// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeWithPangle",
    products: [
        .library(
            name: "AdiscopeWithPangle",
            targets: ["AdiscopeWithPangle"]),
    ],
    targets: [
        .target(
            name: "AdiscopeWithPangle",
            dependencies: [
                .target(name: "PAGAdSDK"),
            ],
            resources: [.copy("PAGAdSDK.bundle")]
        ),
        .binaryTarget(
            name: "PAGAdSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Developer/releases/download/2.0.19/PAGAdSDK.xcframework.zip",
            checksum: "01c4c0f3a91a059a14f4066e19e8af4ca0eb17b92f0b3fb785ca37dae1527121"
        ),
    ]
)
