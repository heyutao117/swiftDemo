//
//  main.swift
//  可变参数
//
//  Created by Farben on 2017/9/26.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

func sum(input:Int...)->Int{
//    return input.reduce(0, +)
    return input.reduce(0, { (a1, a2) -> Int in
        return a1+a2
    })
}

print(sum(input: 1,1,3,23,3))


let stringArray = ["Objective-C", "Swift", "HTML", "CSS", "JavaScript"]

func appendString(string1: String, string2: String) -> String {
    return string1 == "" ? string2 : string1 + "、" + string2
}
// $0表示计算后的结果, $1表示数组中的每一个元素
stringArray.reduce("",{
    return $0 == "" ? $1 : $0+"、"+$1
})

func myFunc(numbers:Int...,string:String)  {
    numbers.forEach { for i in 0..<$0{
        print("\(i+1):\(string)")
        }
    }
}

myFunc(numbers: 1,2,3, string: "你好")








