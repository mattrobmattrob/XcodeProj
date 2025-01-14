// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "XcodeProj",
    products: [
        .library(name: "XcodeProj", targets: ["XcodeProj"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mattrobmattrob/XcodeProjCExt", .branch("master")),
        .package(url: "https://github.com/tadija/AEXML", .branch("master")),
        .package(url: "https://github.com/kylef/PathKit", .upToNextMinor(from: "1.0.0")),
    ],
    targets: [
        .target(name: "XcodeProj",
                dependencies: [
                    "XcodeProjCExt",
                    "PathKit",
                    "AEXML",
                ]),
        .testTarget(name: "XcodeProjTests", dependencies: ["XcodeProj"]),
    ]
)
