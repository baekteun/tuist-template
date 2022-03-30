import ProjectDescription



public extension Project {
    static func project(
        name: String,
        organizationName: String = "\(publicOrganizationName)",
        packages: [Package] = [],
        product: Product,
        platform: Platform = .iOS,
        deploymentTarget: DeploymentTarget? = .iOS(targetVersion: "14.0", devices: .iphone),
        dependencies: [TargetDependency] = [],
        infoPlist: InfoPlist = .default,
        settings: Settings? = nil,
        schemes: [Scheme] = []
    ) -> Self {
        let mainTarget: Target = Target(
            name: name,
            platform: platform,
            product: product,
            bundleId: "\(publicOrganizationName).\(name)",
            deploymentTarget: deploymentTarget,
            infoPlist: infoPlist,
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: dependencies
        )
        
        
        let testTarget: Target = Target(
            name: "\(name)Tests",
            platform: platform,
            product: .unitTests,
            bundleId: "\(publicOrganizationName).\(name)Tests",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Tests/**"],
            dependencies: [
                .target(name: name)
            ]
        )
        
        let targets: [Target] = [
            mainTarget,
            testTarget
        ]
        
        return Project(
            name: name,
            organizationName: organizationName,
            packages: packages,
            settings: settings,
            targets: targets,
            schemes: schemes
        )
    }
}
