//
//  DetailsView.swift
//  ContactListSwiftUI
//
//  Created by Никита Тыщенко on 05.05.2024.
//

import SwiftUI

struct DetailsView: View {
    let phone: String
    let email: String
    
    var body: some View {
        VStack(spacing: 15) {
            HStack{
                Image(systemName: "phone")
                    .foregroundStyle(.blue)
                Text(phone)
                
                Spacer()
            }
            
            HStack {
                Image(systemName: "tray")
                    .foregroundStyle(.blue)
                Text(email)
                
                Spacer()
            }
        }
    }
}

#Preview {
    DetailsView(phone: "777", email: "777@gmail.com")
}
