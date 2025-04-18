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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/PAGAdSDK.xcframework.zip",
            checksum: "32df4275fad7b3396215826924bfe931b598f9cf098de924d30ced05a6d64cc5"
        ),
    ]
)
