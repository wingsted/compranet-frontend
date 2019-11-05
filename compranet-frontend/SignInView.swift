//
//  SignInView.swift
//  compranet-frontend
//
//  Created by Thomas Wingsted on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            
            Image(systemName: "circle")
                .padding(.bottom)
            
            Text("Compranet")
                .font(.title)
                .bold()
                .padding(.bottom, 10)
            
            Text("Sign in with your employee account")

            Spacer()
            
            TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            TextField("Placeholder", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                HStack {
                    Spacer()
                    Text("Sign In")
                    Spacer()
                }
                .padding()
                .background(Color.gray)
                .cornerRadius(10)
            }
            .padding()
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
