//
//  main.swift
//  初始化方法的顺序
//
//  Created by Farben on 2017/9/26.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

class Cat {
    var name = String
    init() {
        name = "cat"
    }
    
}

class Tiger: Cat {
    let power : Int
    override init() {
        power = 10
        super.init()
        name = "tiger"
    }
    
}

class A {
    let numA : Int
    init(num:Int) {
        numA = num
    }
    convenience init(bigNum:Bool){
        self.init(bigNum: bigNum?10000:1)
    }
}

class B:A {
    let numB:Int
    override init(num: Int) {
        numB = num +1
        super.init(bigNum: num)
    }
    
}

let anObj = B(bigNum: true)


