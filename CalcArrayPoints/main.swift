//
//  main.swift
//  CalcArrayPoints
//
//  Created by Sydnie Fenske on 4/3/17.
//  Copyright © 2017 Sydnie Fenske. All rights reserved.
//

import Foundation
class CalcArrayPoints {
    
    func mathOperation(left: Int, right: Int, operation: String) {
        var result = "";
        if(operation == "add") {
            result = "The answer is \(add(left: left, right: right))"
        } else if(operation == "subtract") {
            result = "The answer is \(subtract(left: left, right: right))"
        } else if(operation == "multiply") {
            result = "The answer is \(multiply(left: left, right: right))"
        } else if(operation == "divide") {
            result = "The answer is \(divide(left: left, right: right))"
        } else {
            result = "You have entered an invalid operation"
        }
        print(result)
    }


    func add(left: Int, right: Int) -> Int {
        return left + right
    }

    func subtract(left: Int, right: Int) -> Int {
        return left - right
    }

    func multiply(left: Int, right: Int) -> Int {
        return left * right
    }

    func divide(left: Int, right: Int) -> Double {
        return Double(left / right)
    }
    
    // Array Fun 
    
    func reduce(array: [Int], operation: String) {
        if(operation == "add") {
            print("The result of adding the array is: \(add(array:array))")
        } else if(operation == "multiply") {
            print("The result of adding the array is: \(multiply(array:array))")
        } else if(operation == "count") {
            print("The number of elements in the array is: \(count(array:array))")
        } else if(operation == "average") {
            print("The average of the array is: \(average(array:array))")
        } else {
            print("You have entered an incorrect operation")
        }
    }
    
    
    func add(array: [Int]) -> Int{
        var result = 0;
        for i in 0...array.count {
            result += array[i]
        }
        return result;
    }
    
    func multiply(array: [Int]) -> Int{
        var result = 0;
        for i in 0...array.count {
            result *= array[i]
        }
        return result
    }
    
    func count(array: [Int]) -> Int {
        return array.count
    }
    
    func average(array: [Int]) -> Int {
        let total = add(array: array)
        return total / array.count
    }
    
    // Tuples 
    
    func add(p1: (Double, Double), p2: (Double, Double)) -> (Double, Double) {
        return (p1.0 + p2.0, p1.1 + p2.1)
    }
    
    func subtract(p1: (Double, Double), p2: (Double, Double)) -> (Double, Double) {
        return (p1.0 - p2.0, p1.1 - p2.1)
    }
    
    // Dictionaries 
    func add(p1: [String: Double], p2: [String: Double]) -> (Double, Double) {
        return (p1["x"]! + p2["x"]!, p1["y"]! + p2["y"]!)
    }
    
    func subtract(p1: [String: Double], p2: [String: Double]) -> (Double, Double) {
        return (p1["x"]! - p2["x"]!, p1["y"]! - p2["y"]!)
    }
    
    
}





