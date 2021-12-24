import ProjectDescription

let projectName = ""
let orginazationIden = ""

let project = Project(
    name: projectName,
    organizationName: orginazationIden,
    targets: [
        Target(
            name: "\(projectName)",
            platform: .iOS,
            product: .app,
            bundleId: "\(orginazationIden).\(projectName)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: [.iphone]),
            infoPlist: .file(path: Path("Target/Support/Info.plist")),
            sources: ["Target/Source/**"],
            resources: ["Target/Resource/**"]
        )
    ]
)
