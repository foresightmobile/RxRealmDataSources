// swift-tools-version:5.1
import PackageDescription

let package = Package(
	name: "RxRealmDataSources",
    platforms: [
        .macOS(.v10_15), .iOS(.v12), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "RxRealmDataSources", targets: ["RxRealmDataSources"])
    ],
	dependencies: [
		.package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("master")),
		.package(url: "https://github.com/foresightmobile/RxRealm.git", .branch("removed-realm")),
        .package(url: "https://github.com/realm/realm-cocoa", .branch("tg/spm"))
	],
    targets: [
        .target(name: "RxRealmDataSources", dependencies: ["RxRealm", "RxSwift", "RealmSwift", "Realm", "RxCocoa"], path: ".", sources: ["RxRealmDataSources"])
    ]
)
