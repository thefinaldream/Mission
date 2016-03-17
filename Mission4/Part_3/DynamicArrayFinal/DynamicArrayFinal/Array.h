//
//  Array.h
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#ifndef Array_h
#define Array_h

#include <stdio.h>
#include "MemManager.h"
/**
 *  <#Description#> 数组操作头文件，数组结构
 */
typedef MemManager* AnyPointer;

typedef struct Array_ {
    int length_;
    int capacity_;
    AnyPointer *value_;
    //AnyPointer *string_;
} Array;

Array * ArrayCreate();
int ArrayGetLength(Array *arr);
void ArrayAdd(Array *arr,AnyPointer value);
AnyPointer ArrayGet(Array *arr,int index);
void ArrayDestory(Array *arr);
void ArrayRemoveAtIndex(Array *arr,int index);
AnyPointer ArraySet(Array *arr,int index);
#endif /* Array_h */
