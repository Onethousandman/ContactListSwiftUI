//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

import SwiftUI

struct ContactListView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            List(persons, id: \.name) { person in
                ContactRowView(person: person)
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContactListView()
}
