// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "StytchDFP",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "StytchDFP",
            targets: ["stytch-ios-dfp"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "stytch-ios-dfp",
            dependencies: [
              "StytchDFP"
            ],
            publicHeadersPath: "."
        ),
        .binaryTarget(
            name: "StytchDFP",
            path: "./Sources/stytch-ios-dfp/StytchDFP.xcframework"
        )
    ]
)
