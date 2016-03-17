//
//  main.swift
//  Part3
//
//  Created by Sheny on 16/2/28.
//  Copyright © 2016 Sheny. All rights reserved.
//

import Foundation
/// 程序入口

let totalgirlfriends = 1000

var mygirlfriend = [GirlFriend]()

for num in 0..<totalgirlfriends {
    mygirlfriend.append(GirlFriend(name: NameRandom(), age: AgeRandom()))
}

for num in 0..<totalgirlfriends {
    print("name:\((mygirlfriend[num].name).formatStr())age:\(mygirlfriend[num].age)")
}

