//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Iader Emir Garcia Gomez on 11/11/23.
//

import Foundation

class TipCalculator {
    
    func calculate(total: Double, tipPercentage: Double) throws -> Double {
        
        if total < 0{
            throw TipCalculatorError.invalidInput
        }
        
        return total * tipPercentage
    }
}
