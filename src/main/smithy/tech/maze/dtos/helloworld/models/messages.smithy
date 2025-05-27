$version: "2"

metadata "proto_options" = [{
  "tech.maze.dtos.helloworld.models": {
    "java_multiple_files": "true"
  },
}]

namespace tech.maze.dtos.helloworld.models

use tech.maze.dtos.helloworld.models#Message

/// List of hello worlds
list Messages {
  member: Message
}
