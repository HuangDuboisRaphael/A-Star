import Foundation

public protocol Graph {
    var nodes: [Node] { get }
    
    func createNode(coordinates: Coordinates) -> Node
    func addEdge(from source: Node, to destination: Node, weight: Double)
    func edges(from source: Node) -> [Edge]
    func distance(from source: Node, to destination: Node) -> Double?
}
