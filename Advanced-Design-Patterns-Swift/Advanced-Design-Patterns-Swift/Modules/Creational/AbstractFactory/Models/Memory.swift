//
//  Memory.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

/* Before Abstract Factory
 
struct Memory {
    let capacity: UInt
    let price: Double
}
 
*/

protocol MemoryConfiguration {
    var capacity: UInt { get }
    var price: Double { get }
}

struct Memory: MemoryConfiguration {
    let capacity: UInt
    let price: Double
}
