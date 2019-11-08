//
//  ProfileView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct ProfileView: View {

    @State var firstName: String = ""
    @State var lastName: String = ""

    var body: some View {
        Form {
            Section(header: Text("Name"))
            {
                TextField("First name", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Last name", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
                .padding()
            Section(header: Text("Details")) {
                TextField("Phone number", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                TextField("Department", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
                .padding()
            Section {
                Image("harold-0")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(10)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
