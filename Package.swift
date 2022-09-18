// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "RxCoreData",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_12)
  ],
  products: [
    .library(name: "RxCoreData", targets: ["RxCoreData"]),
  ],
  dependencies: [
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0"))
  ],
  targets: [
    .target(
        name: "RxCoreData",
        dependencies: ["RxSwift", "RxCocoa"],
        path: "Sources"),
  ]
)
