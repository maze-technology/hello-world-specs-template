$version: "2"

namespace tech.maze.dtos.helloworld.controllers

use tech.maze.temporal#signal
use tech.maze.temporal#workflow
use tech.maze.dtos.helloworld.payloads#AddRequest

/// Service for handling Hello World Temporal workflow operations
@workflow(name: "HelloWorld")
service HelloWorldWorkflow {
    version: "1.0.0"
    operations: [
        Add
    ]
}

/// Workflow signal to add a Hello World message
@signal
operation Add {
    input: AddRequest
}
