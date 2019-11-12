//
//  Employee.swift
//  compranet-frontend
//
//  Created by mikkelu on 12/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Combine
import Foundation

struct Employee: Codable, Identifiable {
    var id: UUID?
    var name: String
    var email: String
    var phoneNumber: String?
    var departmentID: UUID
    var createdAt: Date?
    var updatedAt: Date?
}

extension Employee {

    static let stub: Self = .init(
        id: .init(),
        name: "Lars Ulrich",
        email: "test@test.com",
        phoneNumber: "+4512345678",
        departmentID: .init(),
        createdAt: .init(),
        updatedAt: .init()
    )

}

extension Array where Element == Employee {
    static let employeeStubArray: [Employee] = Array(repeating: Employee.stub, count: 10)
}
