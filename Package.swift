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
        .package(url: "https://github.com/apple/swift-protobuf.git", .upToNextMajor(from: "1.27.1")),
        .package(url: "https://github.com/groue/GRDB.swift", from: "6.29.3")
    ],
    targets: [
        .binaryTarget(
            name: "MTAnalytics",
            url: "https://packages.a.mts.ru/repository/apple-sdk/ios-sdk/build/MTAnalytics-Static-5.3.0.zip",
            checksum: "5b09b91bd1f388200b04a16b404cd3638d411a4e15071df437a0e76d8ad11359"
         )
    ]
)
