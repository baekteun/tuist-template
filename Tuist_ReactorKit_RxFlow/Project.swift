import ProjectDescription

let projectName = ""
let organizatiionName = ""
let bundleName = ""

let project = Project(
    name: projectName,
    organizationName: organizatiionName,
    targets: [
        Target(
            name: "\(projectName)",
            platform: .iOS,
            product: .app,
            bundleId: "\(bundleName).\(projectName)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: [.iphone]),
            infoPlist: .file(path: Path("Support/Info.plist")),
            sources: ["Source/**"],
            resources: ["Resource/**"]
        )
    ]
)
