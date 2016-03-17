//
//  Student.c
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#include "Student.h"
#include <stdlib.h>
#include "MemManager.h"
/**
 *  <#Description#> 具体封装类型
 *               新建，得到id_值，得到value_值，修改id_和value_值
 *
 *
 *
 *  
 */
Student* StudentNew(Object id,Object value){
    Student * st = malloc(sizeof(Student));
    MemManagerRetain((MemManager*)st);
    st->id_ = id;
    st->value_ = value;
    return st;
}

Object StudentGetId(Student *st){
    return st->id_;
}
Object StudentGetValue(Student *st){
    return st->value_;
}

void StudentSetId(Student *st,Object id,Object value){
    st->id_ = id;
    st->value_ = value;
}



