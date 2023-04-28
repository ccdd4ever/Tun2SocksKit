// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "Tun2SocksKit",
  platforms: [.iOS(.v12), .macOS(.v12)],
  products: [
    .library(
        name: "Tun2SocksKit",
        targets: ["Tun2SocksKit"]
    )
  ],
  targets: [
    .target(
        name: "Tun2SocksKit",
        dependencies: ["Tun2SocksKitC", "HevSocks5Tunnel"]
    ),
    .target(
        name: "Tun2SocksKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "HevSocks5Tunnel",
        url: "https://github.com/hossinasaadi/Tun2SocksKit/releases/download/0.2.4/HevSocks5Tunnel.xcframework.zip",
        checksum: "34bbb4b4d5ec9dcf613a1c88b883abea70bfe04d2c2ae1cb2161a57dd6960097"
    )
  ]
)
