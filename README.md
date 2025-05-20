# smithy-hello-world-dtos-template

This repository contains a Java library of Data Transfer Objects (DTOs) generated from Smithy IDL

## Setup

- Clone this repository with submodules
- Install [Coursier](https://get-coursier.io/docs/cli-installation)
- Install Smithy Translate: `coursier install --channel https://disneystreaming.github.io/coursier.json smithytranslate`
- Install [Buf](https://buf.build/docs/cli/installation/)

## Build

- `make build`

## Usage

To use this library in your Java project, add it as a dependency:

```xml
<dependency>
    <groupId>tech.maze</groupId>
    <artifactId>smithy-hello-world-dtos-template</artifactId>
    <version>x.y.z</version>
</dependency>
```
