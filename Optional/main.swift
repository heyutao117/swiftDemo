//
//  main.swift
//  Optional
//
//  Created by Farben on 2017/9/25.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

class Toy {
    let name:String
    init(name:String) {
        self.name = name
    }
    
}

class   Pet {
    var toy :  Toy?
}

class Child {
    var pet : Pet?
    
}

if (Child().pet?.toy?.name) != nil{
    
}

extension Toy{
    func play()  {
        
    }
}

Child().pet?.toy?.play()

let playClosure = {(child:Child)->()? in Child().pet?.toy?.play()}

if let _:()=playClosure(Child()){
    print("好开心")
}else{
    print("没有玩具玩")
}

var name:String? = "Jack"
name = nil

var age : Int?
age = 10
age = nil

var array = [1,2,4,4]

func get(_ index:Int) -> Int? {
    if index<0 || index > array.count {
        return nil
    }
    return array[index]
}

print(get(6) as Any);
print(get(3) as Any)

enum Season :Int {
    case spring = 1, summer, autumn,winter
}

if let season = Season(rawValue: 6){
    switch season {
    case .spring:
        print("The season is spring")
    default:
        print("the season is other")
    }
}else{
    print("no such season")
}

var strs = ["10","-20","abc","30"]
var index = 0
var sum = 0
while let num = Int(strs[index]),num>0 {
    sum += num
    index += 1
}

print(sum)

let a:Int? = nil
let b:Int? = 2

if let c = a ?? b{
    print(c)
}

struct Point {
    var x : Int?
    var y : Int?
}



var num2:Int?=nil
num2? = 10
print(num2 as Any)




