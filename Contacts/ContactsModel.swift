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
      for i in 0...DataManager.shared.names.count - 1 {

        people.append(Person(name: DataManager.shared.names[Int.random(in: 0...DataManager.shared.names.count - 1)], surname: DataManager.shared.surnames[Int.random(in: 0...DataManager.shared.surnames.count - 1)], email: DataManager.shared.emails[Int.random(in: 0...DataManager.shared.emails.count - 1)], phone: DataManager.shared.phones[Int.random(in: 0...DataManager.shared.phones.count - 1)]))
    }
  return people
    }
}
