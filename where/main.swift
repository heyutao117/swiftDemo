//
//  main.swift
//  where
//
//  Created by Farben on 2017/9/27.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

let name = ["王小二","张三","李四","王五"]

name.forEach {
    switch $0 {
    case let x where x.hasPrefix("王"):
        print("\(x)是专家")
    default:
        print("你好,\($0)")

    }
}

let num : [Int?] = [80,48,99,nil]
let n = num.flatMap{$0}

for score in n where score>60{
    print("及格了\(score)")
}


