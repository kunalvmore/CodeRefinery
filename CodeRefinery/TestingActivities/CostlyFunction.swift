//
//  CostlyFunction.swift
//  CodeRefinery
//
//  Created by Kunal More on 10/04/24.
//

import Foundation

func costlyFunction() -> Int {
    var result = 0
    
    for i in 1...1_000_000 {
        result += i
    }
    
    return result
}
