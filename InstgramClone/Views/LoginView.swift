//
//  LoginView.swift
//  InstgramClone
//
//  Created by Syber Expertise on 25/12/2021.
//

import SwiftUI

struct LoginView: View {
    @State private var name: String = ""
    @State private var password: String = ""
    let verticalPaddingForForm = 40.0
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: Gradient(colors: [Color.init( red: 0, green: 0, blue: 1, opacity: 0.8), Color.init( red: 1, green: 0, blue: 0, opacity: 1)]), center: .leading, startRadius: 100, endRadius: 470)
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Image("logo")
                    .padding()
                    
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.secondary)
                    TextField("Enter your name", text: $name)
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                
                HStack {
                    Image(systemName: "lock")
                        .foregroundColor(.secondary)
                    TextField("Enter password", text: $password)
                        .foregroundColor(.black)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                    
                ZStack {
                    Button(action: {}) {
                        Text("")
                            .padding()
                            
                    }
                    .frame(width:80)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(30)
                    .opacity(0.8)
                    
                    Text("Login")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                }
                
                VStack {
                    Text("Dont have an account?")
                    Button(action: {}) {
                        Text("Sign Up")
                            .foregroundColor(Color(hue: 0.542, saturation: 0.916, brightness: 0.822))
                            .fontWeight(.bold)
                            .opacity(0.8)
                    }
                }
                
            }.padding(.horizontal, CGFloat(verticalPaddingForForm))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
