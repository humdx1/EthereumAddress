// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EthereumAddress",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "EthereumAddress",
            targets: ["EthereumAddress"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
	.package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "EthereumAddress",
            dependencies: ["CryptoSwift"],
            path: "./EthereumAddress",
            sources: ["./Classes/"],
            publicHeadersPath: "./"
        ),
//        .testTarget(
//            name: "scryptTests",
//            dependencies: ["scrypt"],
//            sources: ["scryptTests/"]
//        ),
    ],
    swiftLanguageVersions: [.v4, .v4_2]
)
