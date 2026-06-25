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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/PAGAdSDK.xcframework.zip",
            checksum: "ce101c49ec8be53e82444fabd929fb5a55d92746d34ab79f62e5e75730aad2f2"
        ),
    ]
)
