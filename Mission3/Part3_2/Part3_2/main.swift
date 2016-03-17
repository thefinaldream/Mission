//
//  main.swift
//  Part3_2
//
//  Created by Sheny on 16/2/29.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation

/// <#Description#>    字符串截取功能（两种实现方式）
let splittoken: NSString = "&a"
let beforestr: NSString = "&adf&aerui&nvnb&eii&"

/// <#Description#>    swift API实现split
print("用swift自带API直接实现：")
let splitapistr = beforestr.splitwithapi(splittoken)
for location in 0..<splitapistr.count {
    print("第\(location + 1)个元素：\(splitapistr[location])")
}
/// <#Description#>    swift 代码实现split
print("用swift语言自选编写代码实现：")
let splitcodestr = beforestr.splitwithcode(splittoken)
for location in 0..<splitcodestr.count {
    print("第\(location + 1)个元素：\(splitcodestr[location])")
}















