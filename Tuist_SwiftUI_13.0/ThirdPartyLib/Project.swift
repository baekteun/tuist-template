import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.dynamicFramework(
    name: "ThirdPartyLib",
    packages: [
        .Moya,
        .Swinject
    ],
    deploymentTarget: .iOS(targetVersion: "13.0", devices: [.iphone, .ipad]),
    dependencies: [
        .SPM.CombineMoya,
        .SPM.Swinject
    ]
)
