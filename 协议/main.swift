//
//  main.swift
//  协议
//
//  Created by 向宇涛 on 2019/10/15.
//  Copyright © 2019 Farben. All rights reserved.
//

import Foundation

protocol PersonProtocal {
    
    //定义属性
    static var personCount: Int{get}
    var name : String{
        set
        get
    }
    var nickName:String{get set}
    var birthPlace:String{get set}
    var age : Int {set get}
    
    //定义函数
    static func play()
    func eat(food:String)
    mutating func changeNickName(newName:String)
    
}

struct Student:PersonProtocal {
    static var personCount = 0
    var name: String = ""
    var nickName: String = ""
    var birthPlace: String = "beijing"
    var age: Int = 20
    static func play() {
        
    }
    
    func eat(food: String) {
        
    }
    
    mutating func changeNickName(newName: String) {
        self.nickName = newName
    }
}

var student:Student = Student()
student.age = 18
student.age = 10

