//
//  main.swift
//  staic和class
//
//  Created by Farben on 2017/9/26.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

struct Point {
    let x :Double
    let y :Double
    static let zero = Point(x: 0, y: 0)
    
    static var ones:[Point]{
        return [Point(x:1,y:1),
                Point(x:-1,y:1),
                Point(x:1,y:-1),
                Point(x:-1,y:-1)
        ]
    }
    
    static func add(p1:Point,p2:Point)->Point{
        return Point(x: p1.x+p2.x, y: p1.y+p2.y)
    }
 
    
}
print("niiai")

func sayhello1(str1:String="Hello",str2:String,str3:String) {
    print(str1+str2+str3)
}

func sayhello2(str1:String,str2:String="world",str3:String)  {
    print(str1+str2+str3)
}

sayhello1(str1: "welcome",str2: "", str3: "world")



