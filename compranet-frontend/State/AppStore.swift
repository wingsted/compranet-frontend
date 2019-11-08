//
//  AppStore.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation
import Combine

// FIXME: MOVE
struct Employee: Codable, Identifiable {
    var id: UUID?
    var name: String
    var phoneNumber: String?
    var departmentID: UUID
    var createdAt: Date?
    var updatedAt: Date?
}

extension Employee {

    static let stub: Self = .init(
        id: .init(),
        name: "Lars Ulrich",
        phoneNumber: "+4512345678",
        departmentID: .init(),
        createdAt: .init(),
        updatedAt: .init()
    )

}

final class AppStore: ObservableObject {

    // MARK: - State

    @Published private(set) var state: AppState = .init()

    // MARK: - Properties

    let signInViewModel = SignInViewModel()

    // MARK: - Getters

    var isSignedIn: Bool {
        state.employee != nil
    }

    // MARK: - Lifecycle

    init() {}

}
