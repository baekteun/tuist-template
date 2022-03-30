import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
    name: "\(projectName)",
    projects: [
        "Projects/App"
    ],
    fileHeaderTemplate: nil,
    additionalFiles: []
)
