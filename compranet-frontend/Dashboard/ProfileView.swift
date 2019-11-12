//
//  ProfileView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct ProfileView: View {

    @State var employee: Employee

    var body: some View {
        VStack(alignment: .center) {
            Image("harold-0")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .frame(width: 150, height: 150)

            VStack(alignment: .center) {
                Text(employee.name)
                    .font(.title)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                Text(employee.email)
                    .bold()
                    .multilineTextAlignment(.center)
            }
            .padding()

            Text("Phone number:")
                .underline()
                .multilineTextAlignment(.center)
                .padding(.bottom, 3)
            Text(employee.phoneNumber!)
                .multilineTextAlignment(.center)
                .padding(.bottom)

            Text("Department ID:")
                .underline()
                .multilineTextAlignment(.center)
                .padding(.bottom, 3)
            Text(employee.departmentID.uuidString)
                .multilineTextAlignment(.center)
                .padding(.bottom)
        }
        .padding(5)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(employee: .stub)
    }
}
