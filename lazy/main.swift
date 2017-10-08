//
//  main.swift
//  lazy
//
//  Created by Farben on 2017/9/27.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

let data = 1...3

let result = data.lazy.map { (i:Int) -> Int in
    return i*2
}

for i in result{
    print("操作后的结果\(i)")
}

print("操作完毕")



