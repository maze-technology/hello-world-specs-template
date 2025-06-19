$version: "2"

namespace tech.maze.dtos.helloworld.controllers

use tech.maze.dtos.helloworld.payloads#AddRequest
use tech.maze.dtos.helloworld.payloads#AddResponse

/// Service for handling Hello World event stream operations
// TODO: @eventStream(name: "HelloWorld")
service HelloWorldEventStream {
    version: "1.0.0"
    operations: [
        Add
    ]
}

/// Operation to add an Hello World message
operation Add {
    input: AddRequest
    output: AddResponse
}