//
//  StudentModel.m
//  PrototypePattern
//
//  Created by HelloAda on 2018/6/25.
//  Copyright © 2018年 HelloAda. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (instancetype)clone {
    StudentModel *student = [[[self class] alloc] init];
    student.name = self.name;
    student.age = self.age;
    student.address = self.address;
    student.totalScore = self.totalScore;
    return student;
}
@end
