// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if canImport(UIKit)
import UIKit
#endif

let package = Package(
    name: "CoreModel",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreModel",
            targets: ["CoreModel"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/benayaokta/BECoreExtension", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CoreModel",
            dependencies: [.product(name: "CoreExtension", package: "BECoreExtension")]),
        .testTarget(
            name: "CoreModelTests",
            dependencies: ["CoreModel", .product(name: "CoreExtension", package: "BECoreExtension")]),
    ]
)
