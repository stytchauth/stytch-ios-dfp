// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "StytchDFP",
    products: [
        .library(
            name: "StytchDFP",
            targets: ["stytch-ios-dfp"]),
    ],
    targets: [
        .target(
            name: "stytch-ios-dfp",
            dependencies: [
              "StytchDFP"
            ],
            publicHeadersPath: "."
        ),
        .binaryTarget(
            name: "StytchDFP",
            url: "https://github.com/stytchauth/stytch-ios-dfp/releases/download/1.0.8/StytchDFP-1.0.8.xcframework.zip",
            checksum: "d503d75f23bdc12b85df29de8017e8a7096d6ad473fc028073c9a43288faee4c"
        )
    ]
)
