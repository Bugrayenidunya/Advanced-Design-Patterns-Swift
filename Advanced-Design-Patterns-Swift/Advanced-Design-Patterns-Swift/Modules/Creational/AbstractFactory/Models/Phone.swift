//
//  Phone.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

/* Before Abstract Factory
 
struct Phone {
    let ram: Ram
    let battery: Battery
    let memory: Memory
    
    var price: Double {
        ram.price + battery.price + memory.price
    }
}

*/

protocol PhoneConfiguration {
    var ram: RamConfiguration? { get }
    var battery: BatteryConfiguration? { get }
    var memory: MemoryConfiguration? { get }
    
    var price: Double { get }
}

struct Phone: PhoneConfiguration {
    var ram: RamConfiguration?
    var battery: BatteryConfiguration?
    var memory: MemoryConfiguration?
    
    var price: Double {
        (ram?.price ?? .zero) + (battery?.price ?? .zero) + (memory?.price ?? .zero)
    }
}

extension PhoneConfiguration {
    var ram: RamConfiguration? {
        return nil
    }
    
    var battery: BatteryConfiguration? {
        return nil
    }
    
    var memory: MemoryConfiguration? {
        return nil
    }
}
