//
//  EmployeeTestView.swift
//  compranet-frontend
//
//  Created by Thomas Wingsted on 07/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct EmployeeTestView: View {
    
    let employee: [Employee]
    
    var body: some View {
                NavigationView {
            List(employee) { employee in
                EmployeeListView(employee: employee)
                    .aspectRatio(contentMode: .fit)
            }
            .navigationBarTitle("Employee List")
        }
    }
}

struct EmployeeTestView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeTestView(employee: Array(repeating: Employee.stub, count: 10))
    }
}
