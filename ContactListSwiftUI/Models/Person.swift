//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let dataStores = DataStore.shared
        let iteration = dataStores.surnames.count
        
        let names = dataStores.names.shuffled()
        let surnames = dataStores.surnames.shuffled()
        let phones = dataStores.phones.shuffled()
        let emails = dataStores.emails.shuffled()
        
        for index in 0..<iteration {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
