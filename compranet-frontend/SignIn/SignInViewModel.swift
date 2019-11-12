//
//  SignInViewModel.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation
import Combine

final class SignInViewModel: ObservableObject {

    let subject = PassthroughSubject<EmployeeTokenResponse, Never>()

    @Published var email: String = ""
    @Published var emailError: String?
    @Published var password: String = ""
    @Published var passwordError: String?

    private var credentials: Credentials
    private var cancellables = Set<AnyCancellable>()

    init() {
        self.credentials = .init()

        subscribePublishers()
    }

    func signIn() {
        guard !credentials.email.isEmpty else {
            emailError = "Please enter an email"
            return
        }

        guard !credentials.password.isEmpty else {
            passwordError = "Please enter a password"
            return
        }

        API.shared
            .signin(with: credentials)
            .sink(receiveCompletion: { completion in
                print(completion)
            }) { response in
                self.subject.send(response)
            }
            .store(in: &cancellables)
    }

    private func subscribePublishers() {
        Publishers
            .CombineLatest($email, $emailError)
            .map { email, error in
                if error != nil && !email.isEmpty {
                    self.emailError = nil
                }

                return email
            }
            .assign(to: \.credentials.email, on: self)
            .store(in: &cancellables)

        Publishers
            .CombineLatest($password, $passwordError)
            .map { password, error in
                if error != nil && !password.isEmpty {
                    self.passwordError = nil
                }

                return password
            }
            .assign(to: \.credentials.password, on: self)
            .store(in: &cancellables)
    }

}
