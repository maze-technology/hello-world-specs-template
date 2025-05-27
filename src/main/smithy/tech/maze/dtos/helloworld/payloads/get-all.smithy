$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.helloworld.payloads": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.helloworld.payloads

use tech.maze.dtos.helloworld.models#Messages

/// Request for GetAll operation
structure GetAllRequest {}

/// Response for GetAll operation
structure GetAllResponse {
  /// List of hello worlds
  @required
  messages: Messages
}
