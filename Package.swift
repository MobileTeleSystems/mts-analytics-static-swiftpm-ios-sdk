// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MTAnalytics",
    platforms: [
        .iOS(.v13),
        .tvOS(.v13)
    ],
    products: [
         .library(name: "MTAnalytics", targets: ["MTAnalytics"])
    ],
    dependencies: [
      	.package(url: "https://github.com/microsoft/plcrashreporter.git", .upToNextMajor(from: "1.11.0")),
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.27.1"))
    ],
    targets: [
        .binaryTarget(
            name: "MTAnalytics",
            url: "https://packages.a.mts.ru/repository/apple-sdk/ios-sdk/build/MTAnalytics-Static-5.1.5-testing-2.zip",
            checksum: "49744f7458f3034e7c87a2ed0cefe9c8c5a862281dd8da485eac562e2799ceb4"
         )
    ]
)
