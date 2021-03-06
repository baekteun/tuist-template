import ProjectDescription

let dependencies = Dependencies(
    carthage: nil,
    swiftPackageManager: [
        .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMajor(from: "15.0.0")),
        .remote(url: "https://github.com/Swinject/Swinject.git", requirement: .upToNextMajor(from: "2.0.0")),
        .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "5.0.0")),
        .remote(url: "https://github.com/Quick/Nimble.git", requirement: .upToNextMajor(from: "9.0.0"))
    ],
    platforms: [.iOS]
)
