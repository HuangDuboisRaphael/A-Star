import Foundation

public typealias Coordinates = (x: Float, y: Float, z: Float)

public struct Node {
    public let index: Int
    public let coordinates: Coordinates
}

extension Node: Equatable {
    public static func == (lhs: Node, rhs: Node) -> Bool {
        lhs.index == rhs.index
    }
}
extension Node: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(index)
    }
}
