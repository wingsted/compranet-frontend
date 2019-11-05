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
            Section(header: Text("Name")) {
                TextField("First name", text: $firstName)
                TextField("Last name", text: $lastName)
            }
            Section(header: Text("Details")) {
                TextField("Phone number", text: $firstName)
                TextField("Department", text: $lastName)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
