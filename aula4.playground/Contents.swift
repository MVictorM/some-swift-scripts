//: Playground - noun: a place where people can play

import Foundation

enum List {
    case empty
    indirect case node(Int, List)
    
    func imprimirElementos(){
        switch self {
        case .empty:
            return
        case let .node(e, next):
            print(e)
            next.imprimirElementos()
        }
}
}

enum BinaryTree {
    case empty
    indirect case node(value: Int, left: BinaryTree, right: BinaryTree)
    func somaElementos() -> Int{
        switch self {
        case .empty:
            return 0
        case let .node(value, left, right):
            return value + left.somaElementos() + right.somaElementos()
        }
    }
    
    func profundidade() -> Int {
        return 1
    }
}


let tree = BinaryTree.node(value: 10, left: .node(value: 5, left: .node(value: 3, left: .empty, right: .empty), right: .node(value: 8, left: .empty, right: .empty)), right: .empty)
