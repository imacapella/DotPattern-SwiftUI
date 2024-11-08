// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DotPattern",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "DotPattern",
            targets: ["DotPattern"]),
    ],
    targets: [
        .target(
            name: "DotPattern",
            dependencies: []),
    ]
)

