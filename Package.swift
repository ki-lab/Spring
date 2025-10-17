// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "Spring",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "Spring",
            targets: ["Spring"]
        ),
    ],
    targets: [
        .target(
            name: "Spring",
            dependencies: [],
            path: "Spring",
            exclude: ["Info.plist"],
            resources: [
                .process("LoadingView.xib")
            ]
        ),
        .testTarget(
            name: "SpringTests",
            dependencies: ["Spring"],
            path: "SpringTests",
            exclude: ["Info.plist"]
        ),
    ],
    swiftLanguageVersions: [.v5]
)
