//
//  Ram.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

/* Before Abstract Factory
 
struct Ram {
    let capacity: UInt
    let price: Double
}

*/

protocol RamConfiguration {
    var capacity: UInt { get }
    var price: Double { get }
}

struct Ram: RamConfiguration {
    let capacity: UInt
    let price: Double
}
