//
//  SortAndRandom.swift
//  StudentScore
//
//  Created by Sheny on 16/2/28.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation
/**
 * @description  studentNames()
 ＊               随机获取学生姓名（5字母），避免手工输入繁琐
 * @param        name                 学生最终拼接成功的姓名
 * @param        randomNumber         获取的随机数字，范围65~90
 * @param        randomCharacter      将randomNumber转换为A~Z之间的随机一个字母
 * @return       String类型
 * @example      var s: String = studentNames()
 */
func studentNames()->String{
    var name: String = ""
    for _ in 0...4{
        let randomNumber = 65 + arc4random() % 26
        let randomCharacter = Character( UnicodeScalar(randomNumber))
        name = "\(name)\(randomCharacter)"
    }
    return name
}
/**
 * @description  studentScores()
 ＊               随机获取学生成绩，范围为1~100(包含边界值)，避免手工输入繁琐
 * @param        score                 学生最终随机返回的单科成绩
 * @return       Int类型
 * @example      var n: Int = studentScores()
 */
func studentScores() ->Int{
    let score = Int(arc4random_uniform(100)) + 1
    return score
}
/**
 * @description   sortArray（[StudentInfo]）
 ＊               对初始生成的乱序学生信息数组进行排序
 * @param         aftersort            排序后的学生信息数组
 * @return       ［StudentInfo］类型
 * @example       var finalstudent = sortArray(studentArr)
 */
func sortArray(arr: [StudentInfo]) ->[StudentInfo]{
    let aftersort = arr.sort { (StudentInfo1, StudentInfo2) -> Bool in
        StudentInfo1.avg < StudentInfo2.avg
    }
    return aftersort
}
