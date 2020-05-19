// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "Watermark",
    products: [
        .library(
            name: "Watermark",
            targets: ["Watermark"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Watermark",
            dependencies: []),
        .testTarget(
            name: "WatermarkTests",
            dependencies: ["Watermark"]),
    ]
)
