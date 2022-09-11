//
//  PhoneFactory.swift
//  Advanced-Design-Patterns-Swift
//
//  Created by Enes Buğra Yenidünya on 11.09.2022.
//

import Foundation

// MARK: - PhoneType
enum PhoneType {
    case modelA
    case modelB
}

// MARK: - PhoneCreator
protocol PhoneCreator {
    static func createPhone(for type: PhoneType) -> Phone?
}

// MARK: - PhoneFactory
final class PhoneFactory: PhoneCreator {
    static func createPhone(for type: PhoneType) -> Phone? {
        let configuration = configuration(type)
        
        guard
            let ram = configuration?.ram,
            let battery = configuration?.battery,
            let memory = configuration?.memory
        else {
            return nil
        }
        
        return Phone(ram: ram, battery: battery, memory: memory)
    }
}

// MARK: - Helpers
private extension PhoneFactory {
    static func configuration(_ type: PhoneType) -> PhoneConfiguration? {
        switch type {
        case .modelA:
            return makePhoneA()
            
        case .modelB:
            return makePhoneB()
        }
    }
    
    static func makePhoneA() -> Phone {
        let ram = Ram(capacity: 6, price: 100)
        let battery = Battery(capacity: 2500, price: 400)
        return Phone(ram: ram, battery: battery, memory: nil)
    }
    
    static func makePhoneB() -> Phone {
        let ram = Ram(capacity: 4, price: 75)
        let battery = Battery(capacity: 1500, price: 350)
        let memory = Memory(capacity: 64, price: 500)
        return Phone(ram: ram, battery: battery, memory: memory)
    }
}
