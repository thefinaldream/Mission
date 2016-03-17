//
//  GetRandom.swift
//  Part3
//
//  Created by Sheny on 16/2/29.
//  Copyright © 2016 Sheny. All rights reserved.
//
import Foundation
/**
 <#Description#> 得到随机年龄，20-30
 
 - returns:   Int
 */
func AgeRandom() ->Int{
    return Int(arc4random_uniform(10)) + 20
}
/**
 <#Description#> 得到随机女朋友名字，A~Z组合
 
 - returns: String
 */
func NameRandom() ->String{
    var name: String = ""
    for _ in 0..<(Int(arc4random_uniform(5)) + 3 ){
        let randomNumber = 65 + arc4random() % 26
        let randomCharacter = Character( UnicodeScalar(randomNumber))
        name = "\(name)\(randomCharacter)"
    }
    return name
}