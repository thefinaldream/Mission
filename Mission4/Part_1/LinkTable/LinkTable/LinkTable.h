//
//  LinkTable.h
//  LinkTable
//
//  Created by 沈洋 on 16/3/3.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#ifndef LinkTable_h
#define LinkTable_h
/**
 *  <#Description#>  定义单链表结构体
 */
typedef struct Linktable_{
    int value;
    struct Linktable_ *next;
} Linktable;

Linktable *createlink(int value,Linktable *next);
void printLinktable(Linktable *first);
void freeNode(Linktable *first);

#endif /* LinkTable_h */
