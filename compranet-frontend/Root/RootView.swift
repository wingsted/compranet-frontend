//
//  RootView.swift
//  compranet-frontend
//
//  Created by mikkelu on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct RootView: View {

    @EnvironmentObject var store: AppStore

    var body: some View {
        Group {
            if store.isSignedIn {
                Dashboard()
            } else {
                SignInView(viewModel: store.signInViewModel)
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(AppStore())
    }
}
