//
//  StudentStruct.swift
//  StudentScore
//
//  Created by Sheny on 16/2/28.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation
/**
 * @description  学生信息结构
 * @param        name                 学生姓名
 * @param        math                 学生数学成绩
 * @param        english              学生英语成绩
 * @param        avg                  学生平均成绩
 * @return       StudentInfo构造实例化
 * @example      studentArr = StudentInfo()
 */
struct StudentInfo {
    var name: String
    var math: Int
    var english: Int
    let avg: Double
    
    init(name: String = "nullname",math: Int = 0,english: Int = 0){
        self.name = name
        self.math = math
        self.english = english
        self.avg = (Double)(math + english)/2
    }
}