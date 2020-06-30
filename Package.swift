// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "IGListKit",
    platforms: [
        .macOS(.v10_11),
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "IGListKit",
            targets: ["IGListKit"]
        )
    ],
    targets: [
        .target(
            name: "IGListKit",
            dependencies: [],
            path: "Source",
            sources: ["IGListKit", "IGListDiffKit"],
            cSettings: [
                .headerSearchPath("IGListKit"),
                .headerSearchPath("IGListKit/Internal"),
                .headerSearchPath("IGListDiffKit"),
                .headerSearchPath("IGListDiffKit/Internal"),
            ]
        )
    ]
)
