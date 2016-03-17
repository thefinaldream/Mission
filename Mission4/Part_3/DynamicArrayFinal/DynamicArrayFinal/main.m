//
//  main.m
//  DynamicArrayFinal
//
//  Created by 沈洋 on 16/3/6.
//  Copyright © 2016年 Sheny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Array.h"
#import "MemManager.h"
#import "Student.h"

/**
 *  <#Description#> 动态数组实现增删改查，不限数据类型，注意内存问题
 *
 *  @param argc 参数数量
 *  @param argv 参数明细数组
 *
 *  @return 主函数，返回整型0,代表程序运行正常
 */

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Array * arr = ArrayCreate();
        //初始增加元素
        Student * st;
        for (int i = 0; i<10; i++){
            st = StudentNew(i,"Hello World");
            ArrayAdd(arr,(MemManager*)st);
            MEMMANAGER_RELEASE(st);
        }
        printf("初始元素：\n");
        for (int j = 0; j<ArrayGetLength(arr);j++){
            printf("%d,%s\n",(int)StudentGetId(((Student*)ArrayGet(arr, j))),StudentGetValue((Student*)ArrayGet(arr, j)));
        }
        //删除一个元素
        printf("删除一个元素后：\n");
        ArrayRemoveAtIndex(arr, 1);
        for (int j = 0; j<ArrayGetLength(arr);j++){
            printf("%d,%s\n",(int)StudentGetId(((Student*)ArrayGet(arr, j))),StudentGetValue((Student*)ArrayGet(arr, j)));
        }
        //查看一个元素
        printf("查看一个元素：\n");
        printf("%d,%s\n",(int)StudentGetId(((Student*)ArrayGet(arr, 4))),StudentGetValue((Student*)ArrayGet(arr, 4)));
        //修改一个元素
        StudentSetId((Student*)ArraySet(arr,3), 222,"aaa");
        printf("修改一个元素后：\n");
        for (int j = 0; j<ArrayGetLength(arr);j++){
            printf("%d,%s\n",(int)StudentGetId(((Student*)ArrayGet(arr, j))),StudentGetValue((Student*)ArrayGet(arr, j)));
        }
        ArrayDestory(arr);
    }
    return 0;
}
