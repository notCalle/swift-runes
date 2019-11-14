// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "Runes",
  products: [
    .library(name: "Runes", targets: ["Runes"])
  ],
  dependencies: [
    .package(url: "https://github.com/typelift/SwiftCheck.git", from: "0.12.0")
  ],
  targets: [
    .target(name: "Runes"),
    .testTarget(
      name: "RunesTests",
      dependencies: [
        "Runes",
        "SwiftCheck",
      ]
    ),
  ]
)
