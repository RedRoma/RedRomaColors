//
//  RedRomaColors.swift
//  RedRomaColors
//
//  Created by Wellington Moreno on 9/5/16.
//  Copyright © 2016 RedRoma, Inc. All rights reserved.
//

import Foundation
import UIKit


public class RedRomaColors
{
    //MARK: Blacks
    public static let blackPrimary: UIColor = Colors.fromRGB(red: 27, green: 32, blue: 33)
    public static let blackAccent: UIColor = Colors.fromRGB(red: 166, green: 118, blue: 100)
    public static let fullyBlack = Colors.fromRGB(red: 0, green: 0, blue: 0)
    
    //MARK: Reds
    public static let redPrimary: UIColor = Colors.from(hexString: "#F42626")!
    public static let red400 = Colors.from(hexString: "#DA2222")!
    public static let red300 = Colors.from(hexString: "#B41C1C")!
    public static let red200 = Colors.from(hexString: "#741212")!
    public static let red100 = Colors.from(hexString: "#350808")!

    
    //MARK: Purples
    public static let darkPurple = Colors.from(hexString: "#740F91")!
    public static let lightPurple = Colors.from(hexString: "#C00DC0")!
    
    
    //MARK: Blues
    public static let lightBlue = Colors.from(hexString: "#28A5F4")!
    public static let darkBlue = Colors.from(hexString: "#1E72A7")!
    
    //MARK: Others
    
    public static let blue = Colors.fromRGB(red: 3, green: 122, blue: 255)
    public static let green = Colors.fromRGB(red: 0, green: 166, blue: 118)
    public static let maroon = Colors.fromRGB(red: 100, green: 6, blue: 17)
    public static let pink = Colors.fromRGB(red: 255, green: 0, blue: 122)
    public static let turquoise = Colors.fromRGB(red: 10, green: 175, blue: 190)
    public static let yellow = Colors.from(hexString: "#F2EF0D")!
    public static let midGray = Colors.fromRGB(red: 74, green: 74, blue: 74)
    public static let lightGray = Colors.fromRGB(red: 233, green: 233, blue: 233)
    public static let white = Colors.fromRGB(red: 255, green: 255, blue: 255)
}
