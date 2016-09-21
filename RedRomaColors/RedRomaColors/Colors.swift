//
//  Colors.swift
//  RedRomaColors
//
//  Created by Wellington Moreno on 9/5/16.
//  Copyright © 2016 RedRoma, Inc. All rights reserved.
//

import Foundation
import UIKit

/**
    This class is useful for creating Colors using RGB, RGBA, and HEX strings.
 */
public class Colors
{
    
    /**
        Create a color from an RGB color space. Color values are expected in the `0-255` space.
     
        - parameter red   : The `red` component, between `0...255`
        - parameter green : The `green` component, between `0...255`
        - parameter blue  : The `blue` component, between `0...255`
     
        - returns : The corresponding color
    */
    public static func fromRGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor
    {
        return fromRGBA(red: red, green: green, blue: blue, alpha: 100)
    }
    
    /**
        Create a color from an RGBA color space. Colors values are expected in the `0...255` range.
        Aplha values are expected as a percentage, in the `0...100`% range.
     
         - parameter red   : The `red` component, between `0...255`
         - parameter green : The `green` component, between `0...255`
         - parameter blue  : The `blue` component, between `0...255`
         - parameter aplha: The `alpha`, or transparency component. It is expected as a percentage from `0...100`.
         
         - returns : The corresponding color
     
    */
    public static func fromRGBA(red: CGFloat, green: CGFloat, blue:CGFloat, alpha: CGFloat) -> UIColor
    {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha/100)
    }
    
    /**
        Create a color value using a Hexadecimal String. Color values are expect in the `"000000"..."FFFFFF"` range.
     
        - parameter hexString: The hex color string, for example, "`#740F91"`.
     
        - returns: The corresponding `UIColor`
    */
    public static func from(hexString: String) -> UIColor?
    {
        guard !hexString.isEmpty
        else
        {
            print("Hex String cannot be empty")
            return nil
        }
        
        //Remove the Hash symbol
        let hex = hexString.replacingOccurrences(of: "#", with: "")
        
        guard hex.characters.count == 6
        else
        {
            print("Hex must have 6 characters exactly")
            return nil
        }
        
        let parts = splitEveryTwoChracters(string: hex)
        
        guard parts.count == 3 else { return nil }
        
        let redComponent = parts[0]
        let greenComponent = parts[1]
        let blueComponent = parts[2]
        
        let redValue = toDecimal(hexString: redComponent)
        let greenValue = toDecimal(hexString: greenComponent)
        let blueValue = toDecimal(hexString: blueComponent)
        
        return fromRGB(red: CGFloat(redValue), green: CGFloat(greenValue), blue: CGFloat(blueValue))
        
    }
    
    static func splitEveryTwoChracters(string: String) -> [String]
    {
        var startIndex = string.startIndex
        var endIndex = string.index(startIndex, offsetBy: 1)
        
        var parts: [String] = []
        
        while (startIndex < string.endIndex && endIndex < string.endIndex)
        {
            let subString = string[startIndex...endIndex]
            parts.append(subString)
            
            startIndex = string.index(endIndex, offsetBy: 1)
            
            if startIndex < string.endIndex
            {
                endIndex = string.index(startIndex, offsetBy: 1)
            }
        }
        
        return parts
    }
    
    static func toDecimal(hexString: String) -> Int
    {
        var exponent = 0
        var value: Int = 0
        
        for hexCharacter in hexString.characters.reversed()
        {
            let hexValue = toDecimal(hexLetter: hexCharacter)
            
            let additionalValue = Double(hexValue) * pow(Double(16), Double(exponent))
            value += Int(additionalValue)
            exponent += 1
        }
        
        return value
    }
    
    static func toDecimal(hexLetter: Character) -> Int
    {
        let hexLetterString = String(hexLetter).uppercased()
        
        let hexLettersMap = [
            "A" : 10,
            "B" : 11,
            "C" : 12,
            "D" : 13,
            "E" : 14,
            "F" : 15
        ]
        
        switch hexLetterString
        {
            case "1"..."9" : return Int(hexLetterString) ?? 0
            default: return hexLettersMap[hexLetterString] ?? 0
        }
    }
    
    
}
