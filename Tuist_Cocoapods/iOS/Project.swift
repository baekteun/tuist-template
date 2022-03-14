import ProjectDescriptionHelpers
import ProjectDescription

let project = Project.excutable(
    name: "",
    platform: .iOS,
    deploymentTarget: .iOS(targetVersion: "13.0", devices: [.iphone, .ipad]),
    dependencies: [
        .project(target: "Service", path: "../Service")
    ]
)
