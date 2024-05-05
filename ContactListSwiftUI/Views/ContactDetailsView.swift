//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        ZStack {
            Color(.gray)
                .opacity(0.1)
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 200)
                    
                Spacer()
            }
            .padding()
            
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                
                DetailsView(phone: person.phone, email: person.email)
                .padding(.leading, 20)
                .padding(.bottom, 5)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(person.fullName)
        
        

    }
}

#Preview {
    ContactDetailsView(person: Person.getPersons().randomElement()!)
}
