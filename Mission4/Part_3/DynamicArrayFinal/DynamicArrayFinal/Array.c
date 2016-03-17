//
//  Array.c
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#include "Array.h"
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "Student.h"

/**
 *  <#Description#> 数组操作
 *               分配内存，新建，得到长度，添加，获取指定下标数组，数组销毁，指定下标数组删除，数组值修改
 *
 *
 *
 */

static AnyPointer * allocMemoryByCapacity(Array *arr){
    return malloc(sizeof(AnyPointer) * arr->capacity_);
}

Array * ArrayCreate(){
    Array * arr = malloc(sizeof(Array));
    arr->length_ = 0;
    arr->capacity_ = 32;
    arr->value_ = allocMemoryByCapacity(arr);
    return arr;
}

int ArrayGetLength(Array *arr){
    return arr->length_;
}

void ArrayAdd(Array *arr,AnyPointer value){
    if (arr->length_ >= arr->capacity_){
        arr->capacity_ *= 2;
        AnyPointer *oldValue = arr->value_;
        arr->value_ = allocMemoryByCapacity(arr);
        memcpy(arr->value_, oldValue, arr->length_ * sizeof(AnyPointer));
        free(oldValue);
    }
    
    arr->value_[arr->length_] = value;
    arr->length_++;
    MEMMANAGER_RETAIN(value);
}

AnyPointer ArrayGet(Array *arr,int index){
    assert(index >= 0 && index < arr->length_);
    return arr->value_[index];
}

void ArrayDestory(Array *arr){
    free(arr->value_);
    free(arr);
    printf("Array is Destory\n");
}



void ArrayRemoveAtIndex(Array *arr,int index){
    assert(index >= 0 && index < arr->length_);
    MEMMANAGER_RELEASE(ArrayGet(arr, index));
    arr->length_--;
    for (int i = index;i < arr->length_;i++){
        arr->value_[i] = arr->value_[i + 1];
    }
}

AnyPointer ArraySet(Array *arr,int index){
    assert(index >= 0 && index < arr->length_);
    return arr->value_[index];
}
