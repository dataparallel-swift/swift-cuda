// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let libraryType: Product.Library.LibraryType? = (ProcessInfo.processInfo.environment["BUILD_STATIC_LIBRARIES"] == "true") ? .static : nil

let package = Package(
    name: "swift-cuda",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "CUDA", type: libraryType, targets: ["CUDA"]),
        .executable(name: "nvidia-device-query", targets: ["nvidia-device-query"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .systemLibrary(
            name: "CUDA",
            pkgConfig: "cuda-12.2"
        ),
        .executableTarget(
            name: "nvidia-device-query",
            dependencies: ["CUDA"]
        ),
    ]
)
