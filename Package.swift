// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "RxRealmDataSources",
	dependencies: [
		.package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("master")),
		.package(url: "https://github.com/foresightmobile/RxRealm.git", .branch("removed-realm")),
	],
    targets: [
        .target(name: "RxRealmDataSources", dependencies: ["RxSwift", "RxRealm"], path: ".", sources: ["RxRealmDataSources"])
    ]
)
