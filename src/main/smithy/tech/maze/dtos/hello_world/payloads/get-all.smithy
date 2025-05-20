$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.hello_world.payloads": {
      "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.hello_world.payloads

use tech.maze.dtos.hello_world.models#Messages

/// Request for GetAll operation
structure GetAllRequest {}

/// Response for GetAll operation
structure GetAllResponse {
    /// List of hello worlds
    @required
    messages: Messages
}
