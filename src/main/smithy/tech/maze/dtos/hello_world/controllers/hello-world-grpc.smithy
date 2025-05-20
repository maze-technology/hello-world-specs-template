$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.hello_world.controllers": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.hello_world.controllers

use alloy.proto#protoEnabled
use tech.maze.dtos.hello_world.payloads#AddRequest
use tech.maze.dtos.hello_world.payloads#AddResponse
use tech.maze.dtos.hello_world.payloads#GetAllRequest
use tech.maze.dtos.hello_world.payloads#GetAllResponse

/// Service for handling hello world operations
@protoEnabled
service HelloWorld {
  version: "1.0.0"
  operations: [
    Add,
    GetAll
  ]
}

/// Operation to get a hello world message
operation Add {
  input: AddRequest
  output: AddResponse
}

/// Operation to get all hello world messages
operation GetAll {
  input: GetAllRequest
  output: GetAllResponse
}
