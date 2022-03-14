import ProjectDescription

let projectName = ""
let organizationName = ""

let project = Project(
    name: projectName,
    organizationName: organizationName,
    targets: [
        Target(
            name: "\(projectName)",
            platform: .iOS,
            product: .app,
            bundleId: "\(organizationName).\(projectName)",
            deploymentTarget: .iOS(targetVersion: "13.0", devices: [.iphone, .ipad]),
            infoPlist: .file(path: Path("Target/Support/Info.plist")),
            sources: ["Target/Sources/**"],
            resources: ["Target/Resources/**"]
        )
    ]
)
