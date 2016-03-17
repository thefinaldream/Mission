//
//  main.m
//  LinkTable
//
//  Created by Sheny on 16/3/3.
//  Copyright © 2016 Sheny. All rights reserved.
//
/**
 *  <#Description#> 实现一个单向链表，并写程序把单向链表进行逆序
 *
 *  @param argc  启动软件时操作系统层参数总数
 *  @param argv  启动软件时操作系统层参数具体参数
 *
 *  @return  NULL
 */
#import <Foundation/Foundation.h>
#import "LinkTable.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //单链表定义及打印（若value需随机，用rand()替代linknum）
        int32_t linknum = 10;
        Linktable *current = NULL;
        Linktable *first = NULL;
        Linktable *tempLink = NULL;
        for(int i = 0;i < linknum;i++){
            if(i == 0){
                current = createlink(i, NULL);
                first = current;
            }else{
                current->next = createlink(i, NULL);
                current = current->next;
            }
        }
        printf("%s\n","原始单链表:");
        printLinktable(first);
        //单链表反转
        printf("%s\n","单链表反转:");
        for(int i = 0;i < linknum - 1;i++){
            if(i == 0){
                current = first;
                first = first->next;
                tempLink = first->next;
                first->next = current;
                current->next = NULL;
            }else{
                current = first;
                first = tempLink;
                tempLink = tempLink->next;
                first->next = current;
            }
        }
        printLinktable(first);
        //销毁单链表
        freeNode(first);
    }
    return 0;
}
