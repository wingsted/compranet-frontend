//
//  EmployeeToken.swift
//  compranet-frontend
//
//  Created by mikkelu on 12/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation

public struct EmployeeToken: Codable {

    public var id: UUID
    public var createdAt: Date
    public var token: String
    public var expire: Date
    public var employeeID: UUID

}

public struct EmployeeTokenResponse: Codable {
    let employee: Employee
    let token: EmployeeToken
}
