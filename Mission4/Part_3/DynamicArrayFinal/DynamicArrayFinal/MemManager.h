//
//  MemManager.h
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#ifndef MemManager_h
#define MemManager_h

#include <stdio.h>

/**
 *  <#Description#> 内存计数头文件及方法定义
 */
typedef struct MemManager_{
    int retainCount_;
} MemManager;

#define MEMMANAGER_RETAIN(mm) MemManagerRetain((MemManager*)mm)
#define MEMMANAGER_RELEASE(mm) MemManagerRelease((MemManager*)mm)
#define MEMMANAGER_COUNT(mm) MemManagerCount((MemManager*) mm)


void MemManagerRetain(MemManager *mm);
void MemManagerRelease(MemManager *mm);
int MemManagerCount(MemManager *mm);
#endif /* MemManager_h */
