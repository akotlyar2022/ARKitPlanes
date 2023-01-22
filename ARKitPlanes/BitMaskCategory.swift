//
//  BitMaskCategory.swift
//  ARKitPlanes
//
//  Created by macbook on 22.01.23.
//

struct BitMaskCategory {
    static let none = 0 << 0    // 00000000...0  0
    static let box = 1 << 0     // 00000000...1  1
    static let plane = 1 << 1   // 0000000...10  2

}
