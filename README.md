# Warpinator

A work in progress Flutter port for Warpinator. Using adaptive design.

## Protobuf

Use the following command to activate the dart plugin:
```sh
dart pub global activate protoc_plugin
```

Also see the [getting started](https://grpc.io/docs/languages/dart/quickstart/)

Use this for compilation:
```sh
protoc --dart_out=grpc:./lib/service/generated -Ilib/service warp.proto
```

## Requirements
### Linux

Linux requires `ayatana-appindicator`.

#### Fedora
```bash
sudo dnf install libayatana-appindicator-gtk3-devel
```

#### Debian based distributions
```bash
sudo apt-get install libayatana-appindicator3-dev
```