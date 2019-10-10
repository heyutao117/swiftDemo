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

enum Sea {
    case <#case#>
}


