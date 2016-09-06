//
//  ColorsTest.swift
//  RedRomaColors
//
//  Created by Wellington Moreno on 9/5/16.
//  Copyright © 2016 RedRoma, Inc. All rights reserved.
//

import Foundation
@testable import RedRomaColors
import UIKit
import XCTest

class ColorsTest: XCTestCase
{
    
    override func setUp()
    {
        
    }
    
    func testColorFromHex()
    {
        var hex = "FFFFFF"
        
        var result: UIColor! = Colors.from(hexString: hex)
        XCTAssertNotNil(result)
        XCTAssertEqual(result, RedRomaColors.white)
        
        hex = "000000"
        result = Colors.from(hexString: hex)
        XCTAssertNotNil(result)
        XCTAssertEqual(result, RedRomaColors.black)
        
    }
    
    
    func testHexToDecimal()
    {
        var hex = "00"
        var result = Colors.toDecimal(hexString: hex)
        XCTAssertEqual(result, 0)
        
        hex = "FF"
        result = Colors.toDecimal(hexString: hex)
        XCTAssertEqual(result, 255)
        
        hex = "ad384fc03"
        var expected = 46498380803
        result = Colors.toDecimal(hexString: hex)
        XCTAssertEqual(result, expected)
    }
    
    
    func testSplitStrings()
    {
        let string = "1234567890abcdef"
        
        let parts = Colors.splitEveryTwoChracters(string: string)
        let expected = ["12", "34", "56", "78", "90", "ab", "cd", "ef"]
        
        XCTAssertEqual(parts, expected)
    }
}
