// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "PerfectCRUD",
    platforms: [
        .macOS(.v10_15),
        .macCatalyst(.v13),
        .iOS(.v13),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
	products: [
		.library(name: "PerfectCRUD", targets: ["PerfectCRUD"])
	],
	dependencies: [
		
	],
	targets: [
		.target(name: "PerfectCRUD", dependencies: [])
	]
)
