//
//  EmployeeListView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct EmployeeListView: View {
    
    let employees: [Employee]
    
    var body: some View {
        List(employees) { employee in
            EmployeeRowView(employee: employee)
        }
    }
}


struct EmployeeListView_Previews: PreviewProvider {
    static var previews: some View {
        EmployeeListView(employees: .employeeStubArray)
    }
}
