//
//  main.swift
//  func的参数
//
//  Created by Farben on 2017/9/25.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

//swift是一门讨厌变化的语言，所有可能的地方，都被默认不可变的
func incrementor( variable: Int) -> Int {
    var variable = variable
    variable += 1
    return variable
}

var luckyNumber = 7
let newNumber = incrementor(variable: luckyNumber)
print("luckyNumber")

//inout相当于在函数内部创建了一个新的值，然后在函数返回时将这个值给&修饰的变量，这与引用类型的行为是不同的
func incrementor2(variable:inout Int)->Int {
       variable += 1
    return variable
}

var num = 7
 print("\(incrementor2(variable:&num ))")

func makeIncrementor(addNmuber:Int) -> ((inout Int)->(Int)) {
    func incrementor( variable:inout Int)->(Int){
        variable += addNmuber
        return variable
    }
    return incrementor
}
var number = 5

print("\(makeIncrementor(addNmuber: 20)(&number))")






















