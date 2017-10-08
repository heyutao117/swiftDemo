//
//  main.swift
//  anyClass，元类型和.self
//
//  Created by Farben on 2017/9/26.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

class A {
    //类方法
    class func method(){
        print("hello")
    }
    //实例方法
    func Hello() {
        print("hello")
    }
}

let typeA:A.Type = A.self

A.method()
A().Hello()

protocol Copyable {
    func copy() -> Self
}

class MyClass: Copyable {
    var num = 1
    func copy() -> Self {
        let result = type(of:self).init()
        
        result.num = num
        return result
    }
    required init(){
        
    }

    
}

let object = MyClass()
object.num = 100
let newObject = object.copy()
object.num = 1

print(object.num)
print(newObject.num)







