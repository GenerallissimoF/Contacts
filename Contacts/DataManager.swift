//
//  DataManager.swift
//  Contacts
//
//  Created by Ivan Adoniev on 28.12.2021.
//

import Foundation
class DataManager {
    
    static let shared = DataManager()
    
    let names = ["Ivan", "Anton", "Vasily", "Maksim"]
    let surnames = ["Ivanov", "Popov", "Kolobkov", "Ionov"]
    let emails = ["qqq@mail.ru", "eee@yandex.ru", "rrr@rambler.ru", "ttt@gmail.com"]
    let phones = ["89095561294", "89023456789", "89068976543", "89218765678"]
    
    private init() {}
    
    
}
