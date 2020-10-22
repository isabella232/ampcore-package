// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "9.1.0"

let package = Package(
    name: "AmpCore",
    platforms: [
        .iOS(.v12), .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmpCore",
            targets: ["AmpCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AmpCore",
            url: "https://mdtp-a.akamaihd.net/amp-ios-sdk/frameworks/\(version)/AmpCore.zip",
            checksum: "9ac9891e88edc1d0c7d83a4b09d60a0516647a5564034eb75235162831b11c63"
        )
    ]
)
