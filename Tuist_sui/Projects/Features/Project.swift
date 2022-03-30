import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.framework(
    name: "Features",
    dependencies: [
        .core,
        .service
    ]
)
