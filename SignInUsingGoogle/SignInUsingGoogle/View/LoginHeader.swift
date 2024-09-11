//
//  LoginHeader.swift
//  SignInUsingGoogle
//
//  Created by Alumno on 9/09/24.
//

import SwiftUI

struct LoginHeader: View {
    var body: some View {
        VStack {
            Text("Hola! Bienvenido a Bufetec")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                //.fontWeight(.medium)
                .padding()
            
            Text("Haz login para acceder a tu perfil y tus casos")
                .tint(.secondary)
                .multilineTextAlignment(.center)
                .padding(.top,2)        }
    }
}

struct LoginHeader_Previews: PreviewProvider {
    static var previews: some View {
        LoginHeader()
    }
}
