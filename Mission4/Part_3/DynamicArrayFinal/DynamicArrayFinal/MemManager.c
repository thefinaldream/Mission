//
//  MemManager.c
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#include "MemManager.h"
#include <stdlib.h>
/**
 *  <#Description#> 内存计数
 *               增加，减少及销毁，得到计数值
 *
 */
void MemManagerRetain(MemManager *mm){
    mm->retainCount_++;
}

void MemManagerRelease(MemManager *mm){
    mm->retainCount_--;
    if(mm->retainCount_ <= 0){
        free(mm);
        printf("The MemManager is released!\n");
    }
}

int MemManagerCount(MemManager *mm){
    return mm->retainCount_;
}