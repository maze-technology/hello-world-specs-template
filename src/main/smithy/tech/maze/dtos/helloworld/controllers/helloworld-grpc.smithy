$version: "2"

namespace tech.maze.dtos.helloworld.controllers

use alloy.proto#protoEnabled
use tech.maze.dtos.helloworld.payloads#AddRequest
use tech.maze.dtos.helloworld.payloads#AddResponse
use tech.maze.dtos.helloworld.payloads#GetAllRequest
use tech.maze.dtos.helloworld.payloads#GetAllResponse

/// Service for handling hello world operations
@protoEnabled
service HelloWorld {
    version: "1.0.0"
    operations: [
        Add
        GetAll
    ]
}

/// Operation to add an hello world message
operation Add {
    input: AddRequest
    output: AddResponse
}

/// Operation to get all hello world messages
operation GetAll {
    input: GetAllRequest
    output: GetAllResponse
}
