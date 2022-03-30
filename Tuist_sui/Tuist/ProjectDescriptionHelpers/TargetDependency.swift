import ProjectDescription

public extension TargetDependency {
    static let features: TargetDependency = .project(target: "Features", path: .relativeToRoot("Projects/Features"))
    static let core: TargetDependency = .project(target: "Core", path: .relativeToRoot("Projects/Modules/Core"))
    static let thirdPartyLibrary: TargetDependency = .project(target: "ThirdPartyLibrary", path: .relativeToRoot("Projects/Modules/ThirdPartyLibrary"))
    static let service: TargetDependency = .project(target: "Service", path: .relativeToRoot("Projects/Modules/Service"))
    static let utility: TargetDependency = .project(target: "Utility", path: .relativeToRoot("Projects/Modules/Utility"))
}

// SPM
public extension TargetDependency {
    struct SPM {
        
    }
}
public extension Package {
    
}
