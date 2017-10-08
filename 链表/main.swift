//
//  main.swift
//  链表
//
//  Created by Farben on 2017/9/27.
//  Copyright © 2017年 Farben. All rights reserved.
//

import Foundation

class Node<T> {
    let value : T?
    let next : Node<T>?
    
    init(value:T?,next:Node<T>?) {
        self.value = value
        self.next = next
    }
    
    
}

let list = Node(value: 1, next: Node(value: 2, next: nil))
print("\(list)")


