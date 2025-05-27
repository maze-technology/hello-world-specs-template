$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.helloworld.payloads": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.helloworld.payloads

use tech.maze.dtos.helloworld.models#Message

/// Request for Add operation
structure AddRequest {
  @required
  @length(min: 1, max: 100)
  content: String
}

/// Response for Add operation
structure AddResponse {
  /// The hello world message
  @required
  message: Message
}
