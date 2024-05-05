//
//  SectionView.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

import SwiftUI

struct SectionView: View {
    private let persons = Person.getPersons()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(persons, id: \.name) { person in
                    Section {
                        DetailsView(phone: person.phone, email: person.email)
                    } header: {
                        Text(person.fullName).textCase(.none)
                            .font(.headline)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    SectionView()
}
