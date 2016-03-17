//
//  ExtensionNSstring.swift
//  Part3_2
//
//  Created by Sheny on 16/3/1.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation

extension NSString{
    /**
     <#Description#> 使用swift API实现split(字符串分割)功能
     
     - parameter splitstr: 分隔字符或分隔字符串
     
     - returns: [String]
     */
    func splitwithapi(splitstr: NSString) -> [String] {
        return self.componentsSeparatedByString(String(splitstr))
    }
    /**
     <#Description#> 使用swift语言自行编写代码实现split(字符串分割)功能
     
     - parameter splitstr: 分隔字符或分隔字符串
     
     - returns: [String]
     */
    func splitwithcode(splitstr: NSString) -> [String] {
        var flag: Bool = true
        var finalstr: [String] = []
        var tempstr: NSString = self
        repeat {
            if((tempstr.rangeOfString(splitstr as String)).length > 0){
                finalstr.append(tempstr.substringToIndex((tempstr.rangeOfString(splitstr as String)).location))
                tempstr = tempstr.substringFromIndex((tempstr.rangeOfString(splitstr as String)).location + (tempstr.rangeOfString(splitstr as String)).length)
            }else{
                finalstr.append(tempstr as String)
                flag = false
            }
        }while(flag)
        return finalstr
    }
    
}