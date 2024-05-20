import Foundation

class Step {
    let index: Int
    let node: Node
    var previous: Step?
    
    let pathCost: Double
    let heuristicCost: Double
    let angle: Double
    
    init(to destination: Node, pathCost: Double, heuristicCost: Double, angle: Double) {
        node = destination
        self.pathCost = pathCost
        self.heuristicCost = heuristicCost
        self.angle = angle
        index = 0
    }
    
    init(from previous: Step, to node: Node, pathCost: Double, heuristicCost: Double, angle: Double) {
        self.previous = previous
        self.node = node
        self.pathCost = pathCost
        self.heuristicCost = heuristicCost
        self.angle = angle
        index = previous.index + 1
    }
    
    func cost() -> Double {
        return pathCost + heuristicCost
    }
}
