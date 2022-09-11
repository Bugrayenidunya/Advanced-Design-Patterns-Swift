//
//  AbstractFactory.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

final class AbstractFactory {
    
    func createPhone() {
        /* Before Abstract Factory
         
        let ram = Ram(capacity: 4, price: 250)
        let battery = Battery(capacity: 1000, price: 100)
        let memory = Memory(capacity: 32, price: 500)
        let phone = Phone(ram: ram, battery: battery, memory: memory)
        
        print("The Phone price is: \(phone.price)")
         
         */
        
        let phoneA = PhoneFactory.createPhone(for: .modelA)
        let phoneB = PhoneFactory.createPhone(for: .modelB)
        
        print("The Phone price is: \(phoneA?.price ?? .zero)")
        print("The Phone price is: \(phoneB?.price ?? .zero)")
    }
    
}
