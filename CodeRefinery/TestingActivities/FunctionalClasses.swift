//
//  FunctionalClasses.swift
//  CodeRefinery
//
//  Created by Kunal More on 02/04/24.
//

import Foundation

// A simple person struct with is Adult function
struct Person {
    let name: String
    let age: Int
    
    func isAdult() -> Bool {
        return age >= 18
    }
}

// A Utility function that calculates the square of a number.
func square(_ number: Int) -> Int {
    return number * number
}

