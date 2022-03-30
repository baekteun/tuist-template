import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.project(
    name: projectName,
    product: .app,
    platform: .iOS,
    dependencies: [
        .features
    ],
    infoPlist: "Support/Info.plist"
)
