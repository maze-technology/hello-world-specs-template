$version: "2"

namespace tech.maze.dtos.helloworld.payloads

use alloy.proto#protoEnabled
use tech.maze.dtos.helloworld.models#Message

/// Request for Add operation
@protoEnabled
structure AddRequest {
    @required
    @length(min: 1, max: 100)
    content: String
}

/// Response for Add operation
@protoEnabled
structure AddResponse {
    /// The hello world message
    @required
    message: Message
}
