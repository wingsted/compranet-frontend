//
//  Response.swift
//  compranet-frontend
//
//  Created by mikkelu on 12/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case error
}

/// A response wrapper that holds the data and url response.
public struct Response {

    /// The data.
    public let data: Data

    /// The url response.
    public let urlResponse: URLResponse

    /// Validate the response from url session.
    static func validate(data: Data, response: URLResponse) throws -> Response {
        guard let httpRes = response as? HTTPURLResponse else {
            print("Could not encode res as http res!")
            throw NetworkError.error
        }
        // make sure the response is within the 200 range
        guard (200...299).contains(httpRes.statusCode) else {
            print("Error, status:", httpRes.statusCode)
            throw NetworkError.error
        }

        return Response(data: data, urlResponse: response)
    }

}
