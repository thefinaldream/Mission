//
//  GirlFriend.swift
//  Part3
//
//  Created by Sheny on 16/2/29.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation
/// GirlFriend Class
public class GirlFriend: NSObject,DateWithSomeone{
    private var _name: String
    private var _age: Int
    
    init(name: String,age: Int){
        _name = name
        _age = age
    }
    
    public var name: String{
        get{
            return _name
        }
        set{
            _name = newValue
        }
    }
    
    public var age: Int{
        get{
            return _age
        }
        set{
            _age = newValue
        }
    }
    
    override public var description:String{
        return "代码功能:用面向对象方法创建1000个女朋友；名字，年龄随机，拥有约会功能，输出至控制台"
    }
    /**
     <#Description#> 约会动作
     */
    func DateWith() {
        print("My girlfriend \(_name) is \(_age) years old,she pin me down to a date")
        //other something
    }
    
    
    
    
    
}