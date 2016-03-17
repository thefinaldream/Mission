//
//  NodeOpt.m
//  LinkTable
//
//  Created by 沈洋 on 16/3/3.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkTable.h"
/**
 *  <#Description#> 定义单链表
 *
 *  @param value 单链表节点值
 *  @param next  单链表下一指向
 *
 *  @return      Linktable节点
 */
Linktable *createlink(int value,Linktable *next){
    Linktable *node = malloc(sizeof(Linktable));
    node->value = value;
    node->next = next;
    return node;
}
/**
 *  <#Description#>  打印单链表
 *
 *  @param first 单链表第一个结点
 */
void printLinktable(Linktable *first){
    for(Linktable *node = first;node != NULL;node=node->next){
        printf("%d\n",node->value);
    }
}
/**
 *  <#Description#> 销毁单链表
 *
 *  @param first 单链表第一个结点
 */
void freeNode(Linktable *first){
    Linktable *temp;
    while (first != NULL) {
        temp = first;
        first = first->next;
        free(temp);
    }
}
