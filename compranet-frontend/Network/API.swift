//
//  API.swift
//  compranet-frontend
//
//  Created by mikkelu on 12/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Combine
import Foundation

final class API {

    private let session = URLSession.shared
    private let baseURL: String
    static let shared: API = .init()

    lazy var decoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()

    private init() {
        #if DEBUG
        self.baseURL = "http://localhost:8080"
        #else
        self.baseURL = ""
        #endif
    }

    func signin(with credentials: Credentials) -> AnyPublisher<EmployeeTokenResponse, Error> {
        let endpoint = URL(string: baseURL + "/api/v1/auth/signin")!
        var req = URLRequest(url: endpoint)
        req.addValue("Basic \(credentials.encode())", forHTTPHeaderField: "Authorization")
        req.httpMethod = "POST"
        return session
            .dataTaskPublisher(for: req)
            .tryMap { try Response.validate(data: $0, response: $1) }
            .map { $0.data }
            .decode(type: EmployeeTokenResponse.self, decoder: decoder)
            .eraseToAnyPublisher()
    }

}
