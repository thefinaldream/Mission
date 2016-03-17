//
//  main.swift
//  L02JiuJiu
//
//  Created by ShenY on 16/2/25.
//  Copyright © 2016年 ShenY. All rights reserved.
//
//任务：编程实现在控制台输出九九乘法表
/*
代码实现功能：
默认功能（不加参数）实现9*9乘法口诀表，并以左对齐输出
其它功能（用户自定义参数）实现10以下任意数字乘法口诀表，并以左对齐输出
*/
import Foundation
/*
函数sub99：
    如果调用函数时指定参数，则按指定参数运行口诀表，若无指定，则默认执行9*9完整乘法口诀表，以保证程序可扩展性
    如果用户输入参数大于9,则程序报错
    firstNum:口诀表打印结果算式中乘数
    secondNum:口诀表打印结果算式中被乘数
    循环逻辑：乘数1至firstNum进行外层循环，被乘数1至当前乘数firstLoop内层循环，
            每一次内层循环计算后，判断当前结果是否为个位数，如为个位数则通过print(" ",terminator:"")补位
            空格，以保证与结果是两位数时格式一致，保证显示结果左对齐，依次打印算式及结果，每一次内层循环结束后，
            通过print("")换行；
*/
func sub99(firstNum:Int = 9,
          secondNum:Int = 9){
    if(firstNum>9||secondNum>9){
        print("对不起，该段代码当前只支持10以下数字!");
    }else{
        for firstLoop in 1...firstNum{
            for secondLoop in
                         1...firstLoop{
                print("\(secondLoop)*\(firstLoop)=\(firstLoop*secondLoop)",terminator:"  ")
                if((firstLoop*secondLoop)/10==0){
                    print(" ",terminator:"")
                }
            }
            print("");
        }
    }
}
/*
sub99默认直接调用9*9乘法口诀
sub99()
sub99默认直接调用自定义数字乘法口诀
sub99(10,secondNum: 10)
*/
sub99()
