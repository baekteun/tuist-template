import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.dynamicFramework(
    name: "ThirdPartyLib",
    packages: [
        .Moya,
        .ComposableArchitecture
    ],
    deploymentTarget: .iOS(targetVersion: "14.0", devices: [.iphone, .ipad]),
    dependencies: [
        .SPM.CombineMoya,
        .SPM.ComposableArchitecture,
    ]
)
