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

if let toyName = Child().pet?.toy?.name{
    
}

extension Toy{
    func play()  {
        
    }
}

Child().pet?.toy?.play()

let playClosure = {(child:Child)->()? in Child().pet?.toy?.play()}

if let result:()=playClosure(Child()){
    print("好开心")
}else{
    print("没有玩具玩")
}



