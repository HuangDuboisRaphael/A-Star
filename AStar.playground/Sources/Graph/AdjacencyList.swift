import Foundation

public class AdjacencyList: Graph {
    
    private var adjacencies: [Node: [Edge]] = [:]
    
    public init() {}
    
    public var nodes: [Node] {
        Array(adjacencies.keys)
    }
    
    public func createNode(coordinates: Coordinates) -> Node {
        let node = Node(index: adjacencies.count, coordinates: coordinates)
        adjacencies[node] = []
        return node
    }
    
    public func addEdge(from source: Node, to destination: Node, weight: Double) {
        let edge = Edge(source: source, destination: destination, weight: weight)
        adjacencies[source]?.append(edge)
    }
    
    public func edges(from source: Node) -> [Edge] {
        adjacencies[source] ?? []
    }
    
    public func distance(from source: Node, to destination: Node) -> Double? {
        edges(from: source).first { $0.destination == destination }?.weight
    }
}
