//
//  EmployeeRowView.swift
//  compranet-frontend
//
//  Created by mikkelu on 08/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct EmployeeRowView: View {

    let employee: Employee

    var body: some View {
        HStack {
            Image("harold-0")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding()
            VStack(alignment: .leading) {
                Text(employee.name)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
                Text(employee.phoneNumber!)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
            }

            Spacer()
        }
        .background(Color.gray)
        .cornerRadius(8)
    }
}

struct EmployeeRowView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeRowView(employee: .stub)
    }
}
