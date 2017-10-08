//
//  main.swift
//  associatedtype
//
//  Created by Farben on 2017/9/25.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

protocol Food {
    
}

protocol Animal {
    associatedtype F
    func eat(food:Food)
}

struct Meat :Food{
    
}

struct Grass :Food{
    
}

struct Tiger:Animal {
    typealias F  = Meat
    func eat(food: Food) {
        print("eat \(eat)")
    }
}

Tiger().eat(food: Meat())

func isDangerous<T:Animal>(animal:T) -> Bool {
    if animal is Tiger {
        return true
    }else{
        return false
    }
}
