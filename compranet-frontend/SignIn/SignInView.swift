//
//  SignInView.swift
//  compranet-frontend
//
//  Created by Thomas Wingsted on 05/11/2019.
//  Copyright © 2019 Thomas Wingsted. All rights reserved.
//

import SwiftUI

struct SignInView: View {

    @ObservedObject var viewModel: SignInViewModel

    var body: some View {
        KeyboardObservingView(extraPadding: 20) {
            VStack(alignment: .leading) {
                Spacer()

                Image(systemName: "c.circle")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .imageScale(.large)
                    .frame(width: 50, height: 50)
                    .padding(.bottom, 10)

                Text("Compranet")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 10)

                Text("Sign in with your employee account")

                Spacer()

                Group {
                    TextField("Email", text: $viewModel.email)
                        .foregroundColor(.primary)
                        .padding()
                        .frame(minWidth: 50, minHeight: 50, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                        .autocapitalization(.none)
                        .textContentType(.emailAddress)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 2)
                            .foregroundColor(viewModel.emailError == nil ? .gray : .red)
                        )

                    viewModel.emailError.map { error in
                        Text(error)
                            .foregroundColor(.red)
                            .animation(.easeOut(duration: 0.3))
                    }

                    SecureField("Password", text: $viewModel.password)
                        .foregroundColor(.primary)
                        .padding()
                        .frame(minWidth: 50, minHeight: 50, maxHeight: 50)
                        .background(Color.white)
                        .cornerRadius(8)
                        .autocapitalization(.none)
                        .textContentType(.emailAddress)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 2)
                            .foregroundColor(viewModel.passwordError == nil ? .gray : .red)
                        )

                    viewModel.passwordError.map { error in
                        Text(error)
                            .foregroundColor(.red)
                            .animation(.easeOut(duration: 0.3))
                    }
                }

                Spacer()

                Button(action: viewModel.signIn) {
                    HStack {
                        Spacer()
                        Text("Sign In")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView(viewModel: .init())
        .environmentObject(Keyboard())
    }

}
