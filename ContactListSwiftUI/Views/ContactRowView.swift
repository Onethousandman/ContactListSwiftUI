//
//  ContactListRowView.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

import SwiftUI

struct ContactRowView: View {
    let person: Person
    
    var body: some View {
        NavigationLink(destination: ContactDetailsView(person: person)) {
            Text(person.fullName)
        }
    }
}

#Preview {
    ContactRowView(person: Person.getPersons().randomElement()!)
}
