//
//  ExtensionString.swift
//  Part3
//
//  Created by Sheny on 16/2/29.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation

// MARK: - 扩展String API，以实现格式排版
extension String{
    func formatStr() ->String{
        var str: String = self
        str = str + ","
        for _ in 0...9 - (self.characters.count){
            str = str + " "
        }
        return str
    }
}