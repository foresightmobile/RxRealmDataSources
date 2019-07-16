// swift-tools-version:5.0
import PackageDescription

let package = Package(
	name: "RxRealmDataSources",
	dependencies: [
		.package(url: "https://github.com/ReactiveX/RxSwift.git", .branch("master")),
		.package(url: "https://github.com/foresightmobile/RxRealm.git", .branch("removed-realm")),
        .package(url: "https://github.com/realm/realm-cocoa", .branch("tg/spm"))
	],
    targets: [
        .target(name: "RxRealmDataSources", dependencies: ["RxRealm", "RxSwift", "RealmSwift", "Realm", "RxCocoa"], path: ".", sources: ["RxRealmDataSources"])
    ]
)
