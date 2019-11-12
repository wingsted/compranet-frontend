//
//  Credentials.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import Foundation

struct Credentials: Codable {
    var email: String = ""
    var password: String = ""

    func encode() -> String {
        let creds = "\(email):\(password)"
        return Data(creds.utf8).base64EncodedString()
    }
}
