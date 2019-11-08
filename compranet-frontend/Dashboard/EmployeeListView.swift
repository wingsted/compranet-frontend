//
//  EmployeeListView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct EmployeeListView: View {
    
    let employee: Employee
    
    @State var name: String = ""
    @State var phoneNumber: String = ""
    //FIXME: @State for profile image and departmentID?
    
    var body: some View {
        List {
            HStack {
                VStack {
            TextField("Name", text: $name)
                .foregroundColor(.white)

            TextField("Phone Number", text: $phoneNumber)
                    .foregroundColor(.white)

                }
            Image("harold-0")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
         //   .padding()
            }
        .background(Color.gray)
        .cornerRadius(8)
        }
    }
}


struct EmployeeListView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeListView(employee: .stub)
    }
}
