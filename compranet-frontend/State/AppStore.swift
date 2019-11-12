//
//  AppStore.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation
import Combine

final class AppStore: ObservableObject {

    // MARK: - State

    @Published private(set) var state: AppState = .init()

    // MARK: - Properties

    let signInViewModel = SignInViewModel()
    private var cancellables = Set<AnyCancellable>()

    // MARK: - Getters

    var isSignedIn: Bool {
        state.employee != nil
    }

    // MARK: - Lifecycle

    init() {
        signInViewModel
            .subject
            .receive(on: RunLoop.main)
            .sink { response in
                self.state.employee = response.employee
                self.state.token = response.token
            }
            .store(in: &cancellables)
    }

}
