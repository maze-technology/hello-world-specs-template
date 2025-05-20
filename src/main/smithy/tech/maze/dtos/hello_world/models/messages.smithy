$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.hello_world.models": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.hello_world.models

use tech.maze.dtos.hello_world.models#Message

/// List of hello worlds
list Messages {
  member: Message
}
