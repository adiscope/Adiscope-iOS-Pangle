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
            checksum: "0fb909bf1a0ffd7302861ceb7f401121ab298a57363dc4eff15df467d5b024d7"
        ),
    ]
)
