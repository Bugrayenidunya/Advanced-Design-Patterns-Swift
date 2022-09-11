//
//  Battery.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

/* Before Abstract Factory
 
struct Battery {
    let capacity: UInt
    let price: Double
}
 
*/

protocol BatteryConfiguration {
    var capacity: UInt { get }
    var price: Double { get }
}

struct Battery: BatteryConfiguration {
    let capacity: UInt
    let price: Double
}
