//
//  Calculator.swift
//  ComplexCalc
//
//  Created by Ted Neward on 10/4/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

// All your work will go in here
class Calculator {
    func add(lhs: Int, rhs: Int)-> Int {
        return lhs + rhs
    }
    
    func add(_ args: [Int]) -> Int {
        return args.reduce(0, +)
    }
    
    func add(lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> (Int, Int) {
        return ((lhs.x + rhs.x), (lhs.y + rhs.y))
    }
    
    func add(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! + rhs["x"]!, "y": lhs["y"]! + rhs["y"]!]
    }
    
    func subtract(lhs: Int, rhs: Int) -> Int {
        return lhs - rhs
    }
    
    func subtract(lhs: (x: Int, y: Int), rhs: (x: Int, y: Int)) -> (Int, Int) {
        return ((lhs.x - rhs.x), (lhs.y - rhs.y))
    }
    
    func subtract(lhs: [String: Int], rhs: [String: Int]) -> [String: Int] {
        return ["x": lhs["x"]! - rhs["x"]!, "y": lhs["y"]! - rhs["y"]!]
    }
    
    func multiply(_ args: [Int]) -> Int {
        return args.reduce(1, *)
    }
    
    func multiply(lhs: Int, rhs: Int) -> Int {
        return lhs * rhs
    }
    
    func divide(lhs: Int, rhs: Int) -> Int {
        return lhs / rhs
    }
    
    func count(_ args: [Int]) -> Int {
        return args.count
    }
    
    func avg(_ args: [Int]) -> Int {
        return (add(args) / count(args));
    }
    
    func mathOp(lhs: Int, rhs: Int, op: (_: Int, _: Int) -> Int) -> Int {
        return op(lhs, rhs);
    }
    
    func mathOp(args: [Int], beg: Int, op: (_: Int, _: Int) -> Int) -> Int {
        return args.reduce(beg, op)
    }
}
