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
            resources: [.copy("PAGAdSDK.bundle")],
            linkerSettings: [
              .linkedFramework("Accelerate" ),
              .linkedLibrary("resolv"),
              .linkedLibrary("bz2"),
              .linkedLibrary("c++abi"),
              .linkedLibrary("c++"),
            ]
        ),
        .binaryTarget(
            name: "PAGAdSDK",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/PAGAdSDK.xcframework.zip",
            checksum: "d4e89ea29d07fd397d8a65f091544a9a1addd4ac376a24a325100a0f15d6b2d6"
        ),
    ]
)
