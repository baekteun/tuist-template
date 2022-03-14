import ProjectDescription

extension TargetDependency{
    public struct SPM {}
}

public extension TargetDependency.SPM{
    static let CombineMoya = TargetDependency.package(product: "CombineMoya")
    static let ComposableArchitecture = TargetDependency.package(product: "ComposableArchitecture")
    static let ComposableNavigation = TargetDependency.package(product: "ComposableNavigation")
}

public extension Package {
    static let Moya = Package.remote(
        url: "https://github.com/Moya/Moya.git",
        requirement: .upToNextMajor(from: "15.0.0")
    )
    static let ComposableArchitecture = Package.remote(
        url: "https://github.com/pointfreeco/swift-composable-architecture.git",
        requirement: .upToNextMajor(from: "0.33.1")
    )
    static let ComposableNavigation = Package.remote(
        url: "https://github.com/heinzl/swift-composable-navigation.git",
        requirement: .upToNextMajor(from: "2.0.0")
    )
}
