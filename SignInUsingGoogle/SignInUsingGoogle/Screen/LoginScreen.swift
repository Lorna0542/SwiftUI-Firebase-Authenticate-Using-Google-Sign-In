//
//  ContentView.swift
//  SignInUsingGoogle
//
//  Created by Alumno on 9/09/24.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn
import Firebase

struct LoginScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("LogoTec")
                .resizable()
                .frame(width:100, height: 100)
            VStack {
                LoginHeader()
                    .padding(.bottom)
                
                CustomTextfield(text: $username)
                
                CustomTextfield(text: $username)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Forgot Password?")
                    }
                }
                .padding(.trailing, 24)
                
                CustomButton()
                
                
                Text("or")
                    .padding()
                
                GoogleSiginBtn {
                    // TODO: - Call the sign method here
                    FirebAuth.share.signinWithGoogle(presenting: getRootViewController()) { error in
                            if let error = error {
                                print("Error signing in with Google: \(error.localizedDescription)")
                            } else {
                                print("Successfully signed in with Google")
                            }
                        }
                } // GoogleSiginBtn
            } // VStack
            .padding(.top, 52)
            Spacer()
        }
    }
}


#Preview{
    LoginScreen()
}

