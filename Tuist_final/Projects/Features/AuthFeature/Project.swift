import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.staticFramework(
    name: "AuthFeature",
    dependencies: [
        .Project.Features.CommonFeature
    ]
)
