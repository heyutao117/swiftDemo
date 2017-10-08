//
//  main.swift
//  动态类型和方法
//
//  Created by Farben on 2017/9/27.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

class Pet {
    
}

class Cat: Pet {
    
}
class Dog: Pet {
    
}

func printPet(pet:Pet) {
    print("Pet")
}

func printPet(cat:Cat) {
    print("Meow")
}

func printPet(dog:Dog) {
    print("bark")
}

printPet(cat: Cat())
printPet(dog: Dog())

func printThem(pet:Pet,cat:Cat) {
    if let aCat = pet as? Cat {
        printPet(cat: aCat)
    }else if let aDog = pet as? Dog{
        printPet(dog: aDog)
    }
    printPet(pet: pet)
}


class Parent {
    final func method(){
        print("开始配置")
        
    }
    
    
}
