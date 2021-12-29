//
//  ContactsModel.swift
//  Contacts
//
//  Created by Ivan Adoniev on 28.12.2021.
//

import Foundation
struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    
    static func getPersons() -> [Person] {
        
        var people = [Person]()
        let shuffledNames = DataManager.shared.names.shuffled()
        let shuffledSurnames = DataManager.shared.surnames.shuffled()
        let shuffledEmails = DataManager.shared.emails.shuffled()
        let shuffledPhone = DataManager.shared.phones.shuffled()
        for i in 0...DataManager.shared.names.count - 1 {
            let person = Person(name: shuffledNames[i],
                                surname: shuffledSurnames[i],
                                email: shuffledEmails[i],
                                phone: shuffledPhone[i])
            people.append(person)
        }
        
        return people
    }
}
