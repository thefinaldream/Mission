//
//  Student.h
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#ifndef Student_h
#define Student_h

#include <stdio.h>
#include "MemManager.h"
#include "Array.h"
/**
 *  <#Description#> 封装类型头文件及方法定义
 */
typedef void* Object;

typedef struct Student_ {
    int retainCount_;
    Object id_;
    Object value_;
} Student;
Student* StudentNew(Object id,Object value);
Object StudentGetId(Student *st);
Object StudentGetValue(Student *st);

void StudentSetId(Student *st,Object id,Object value);


#endif /* Student_h */
