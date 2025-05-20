$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.hello_world.models": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.hello_world.models

structure Message {
  /// The unique identifier of the Message
  @required
  id: String

  /// The content of the Message
  @required
  @length(min: 1, max: 100)
  content: String

  /// The creation timestamp of the Message
  @required
  createdAt: Timestamp
}
