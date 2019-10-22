//
//  main.swift
//  闭包
//
//  Created by 向宇涛 on 2019/10/21.
//  Copyright © 2019 Farben. All rights reserved.
//

import Foundation

var fn = {
    (v1:Int,v2:Int)->Int in
    return v1+v2
}

print(fn(10,20))

func exec(v1:Int,v2:Int,fn:(Int,Int)->Int) {
    print(fn(v1,v2))
}



exec(v1: 10, v2: 20, fn: { (v1:Int,v2:Int) -> Int in
    return v1 + v2
})

exec(v1: 11, v2: 22, fn: {$0 + $1})

exec(v1: 19, v2: 11){
    $0 + $1
}

func cmp(i1:Int,i2:Int) -> Bool {
    return i1 > i2
}

var nums = [11,3,8,4,10,67,34]

nums.sort(by: cmp)

typealias Fn = (Int) -> Int
func getFn() -> Fn {
    var num = 0
    return{
        num += $0
        return num
    }
}
