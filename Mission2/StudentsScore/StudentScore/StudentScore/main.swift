//
//  main.swift
//  StudentScore
//
//  Created by Sheny on 16/2/28.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation
/**
* 任务目标：构造10个学生（要求有学生的姓名、数学成绩、英语成绩）按照学生英语和数学平均分的成绩从
* 小到大输出学生的姓名、数学成绩、英语成绩及平均分
*/
/**
* @description
*               定义学生人数，学生信息数组循环实例化，调用排序函数，输出最终排序后学生信息数组
* @param        studentsnum                 需计算的学生总数
* @param        studentArr                  初始实例化的乱序学生信息数组
* @param        finalstudent                排序后返回的学生信息数组
* @return       nil
* @example      nil
*/

let studentsnum = 10
//define the students
var studentArr = [StudentInfo]()
for i in 0...studentsnum - 1{
    studentArr.append(StudentInfo(name: studentNames(),math: studentScores(),
        english: studentScores()))
}
//sort and output
/**
* 请问老师，xcode的强制换行是怎么设置的？我设了100列限制，但比如下面的print只显示一条竖线
* 我试着直接回车，加shift什么的也不行，代码都会报错？
*/
var finalstudent = sortArray(studentArr)
for j in 0...studentsnum - 1 {
    print("\(finalstudent[j].name)的平均分是：\(finalstudent[j].avg)，数学：\(finalstudent[j].math),英语：\(finalstudent[j].english)")
}


