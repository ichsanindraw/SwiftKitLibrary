import PackageDescription

let package = Package(
  name: "SwiftKitLibrary",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "SwiftKitLibrary",
      targets: ["SwiftKitLibrary"]
    ),
  ],
  targets: [
     .target(
        name: "SwiftKitLibrary",
        path: "Sources"
    ),
  ],
  swiftLanguageVersions: [.v5]
)