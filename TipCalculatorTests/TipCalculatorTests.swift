//
//  TipCalculatorTests.swift
//  TipCalculatorTests
//
//  Created by Iader Emir Garcia Gomez on 11/11/23.
//

import XCTest

final class when_calculating_tip_based_on_total_amount: XCTestCase {
    
    func test_should_calculate_tip_sucessfully() {
        let tipCalculator = TipCalculator()
        let tip = try! tipCalculator.calculate(total: 100, tipPercentage: 0.1)
        XCTAssertEqual(10, tip)
    }
}

final class when_calculating_tip_based_on_negative_total_amount: XCTestCase {
    
    func test_should_throw_invalid_input_exception() {
        let tipCalculator = TipCalculator()
        XCTAssertThrowsError(try tipCalculator.calculate(total: -100, tipPercentage: 0.1), "") { error in
            XCTAssertEqual(error as! TipCalculatorError, TipCalculatorError.invalidInput)
        }
    }
}
