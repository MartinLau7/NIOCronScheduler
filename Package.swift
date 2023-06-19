// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "NIOCronScheduler",
    products: [
        .library(name: "NIOCronScheduler", targets: ["NIOCronScheduler"]),
    ],
    dependencies: [
        // Event-driven network application framework for high performance protocol servers & clients, non-blocking.
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.54.0"),
        // ⏱ Simple pure swift cron expressions parser
        .package(url: "https://github.com/MartinLau7/SwifCron.git", from: "2.0.1"),
    ],
    targets: [
        .target(name: "NIOCronScheduler", dependencies: [
            .product(name: "NIO", package: "swift-nio"),

            "SwifCron",
        ]),
        .testTarget(name: "NIOCronSchedulerTests", dependencies: ["NIOCronScheduler"]),
    ]
)
