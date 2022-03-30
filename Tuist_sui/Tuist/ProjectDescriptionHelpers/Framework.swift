import ProjectDescription

public extension Project {
    static func framework(
        name: String,
        platform: Platform = .iOS,
        packages: [Package] = [],
        dependencies: [TargetDependency] = []
    ) -> Self {
        
        return project(
            name: name,
            packages: packages,
            product: .framework,
            platform: platform,
            dependencies: dependencies
        )
    }
}
