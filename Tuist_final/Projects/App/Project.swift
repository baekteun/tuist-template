import ProjectDescriptionHelpers
import ProjectDescription
import UtilityPlugin

let settinges: Settings =
    .settings(base: Environment.baseSetting,
              configurations: [
                .debug(name: .dev, xcconfig: .relativeToRoot("XCConfig/App/App-DEV.xcconfig")),
                .debug(name: .debug),
                .release(name: .prod, xcconfig: .relativeToRoot("XCConfig/App/App-PROD.xcconfig")),
                .release(name: .release)
              ],
              defaultSettings: .recommended)

let scripts: [TargetScript] = [
    .swiftLint
]

let targets: [Target] = [
    .init(
        name: Environment.targetName,
        platform: .iOS,
        product: .app,
        productName: Environment.appName,
        bundleId: "\(Environment.organizationName).\(Environment.targetName)",
        deploymentTarget: Environment.deploymentTarget,
        infoPlist: .file(path: "Support/Info.plist"),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        scripts: scripts,
        dependencies: [
            .Project.Features.RootFeature,
            .Project.Module.ThirdPartyLib,
        ],
        settings: .settings(base: Environment.baseSetting)
    ),
    .init(
        name: Environment.targetDevName,
        platform: .iOS,
        product: .app,
        productName: Environment.appName,
        bundleId: "\(Environment.organizationName).\(Environment.targetName).dev",
        deploymentTarget: Environment.deploymentTarget,
        infoPlist: .file(path: "Support/Info.plist"),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        scripts: scripts,
        dependencies: [
            .Project.Features.RootFeature,
            .Project.Module.ThirdPartyLib,
        ]
    ),
    .init(
        name: Environment.targetTestName,
        platform: .iOS,
        product: .unitTests,
        bundleId: "\(Environment.organizationName).\(Environment.targetName)Tests",
        deploymentTarget: Environment.deploymentTarget,
        infoPlist: .default,
        sources: ["Tests/**"],
        dependencies: [
            .target(name: Environment.targetName),
            .SPM.Quick,
            .SPM.Nimble
        ]
    ),
]

let schemes: [Scheme] = [
    .init(
      name: "\(Environment.targetDevName)-DEV",
      shared: true,
      buildAction: .buildAction(targets: ["\(Environment.targetDevName)"]),
      testAction: TestAction.targets(
          ["\(Environment.targetTestName)"],
          configuration: .debug,
          options: TestActionOptions.options(
              coverage: true,
              codeCoverageTargets: ["\(Environment.targetDevName)"]
          )
      ),
      runAction: .runAction(configuration: .debug),
      archiveAction: .archiveAction(configuration: .debug),
      profileAction: .profileAction(configuration: .debug),
      analyzeAction: .analyzeAction(configuration: .debug)
    ),
    .init(
      name: "\(Environment.targetName)-PROD",
      shared: true,
      buildAction: BuildAction(targets: ["\(Environment.targetName)"]),
      testAction: nil,
      runAction: .runAction(configuration: .release),
      archiveAction: .archiveAction(configuration: .release),
      profileAction: .profileAction(configuration: .release),
      analyzeAction: .analyzeAction(configuration: .release)
    )
]

let project: Project =
    .init(
        name: Environment.targetName,
        organizationName: Environment.organizationName,
        settings: settinges,
        targets: targets,
        schemes: schemes
    )
