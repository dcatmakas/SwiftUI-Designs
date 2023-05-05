//
//  ContentView.swift
//  SwiftUI Design
//
//  Created by Doğukan Çatmakaş on 5.05.2023.
//

import SwiftUI

struct LoginDesign: View {
    var body: some View {
        VStack {
            HStack {
                backButton()
                Spacer()
            }
            
            signInLabel()
            
            weardLabel()
            
            ZStack {
                Rectangle()
                    .cornerRadius(10, antialiased: true)
                    .frame(width: .infinity, height: 50)
                    .foregroundColor(Color("TextFieldColor"))
                    .padding(.horizontal)
                
                emailTextField()
            }
            
            ZStack {
                Rectangle()
                    .cornerRadius(10, antialiased: true)
                    .frame(width: .infinity, height: 50)
                    .foregroundColor(Color("TextFieldColor"))
                    .padding(.horizontal)
                
                passwordTextView()
            }
            
            forgotAndShowPassword()
            
            loginButton()
            
            orLine()
            
            HStack {
                googleLogin()
                
                facebookLogin()
            }
            
            VStack {
                Text("Don't Have An Account?")
                    .padding(.vertical, 1)
                    .foregroundColor(.gray)
                
                Text("Register")
                    .padding(.vertical, 1)
                    .foregroundColor(.blue)
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginDesign()
    }
}

struct backButton: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10, antialiased: true)
                .padding()
                .frame(width: 70, height: 70)
                .foregroundColor(.green)
            
            
            Image(systemName: "chevron.backward")
                .foregroundColor(.white)
        }
    }
}

struct signInLabel: View {
    var body: some View {
        HStack {
            Text("Let's")
                .font(Font.system(size: 30))
            
            Text("Sign In 👇")
                .font(Font.system(size: 28))
                .bold()
            
            Spacer()
        }
        .padding()
    }
}

struct weardLabel: View {
    var body: some View {
        HStack {
            Text("quis nostrud exercitation ullamco laboris nisi ut.")
                .font(Font.system(size: 14))
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct emailTextField: View {
    
    @State private var email: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "envelope.fill")
                .foregroundColor(.blue)
                .padding()
            
            TextField("Continue With Email", text: $email)
            Spacer()
        }
    }
}

struct passwordTextView: View {
    
    @State private var password: String = ""
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "envelope.fill")
                .foregroundColor(.blue)
                .padding()
            
            SecureField("Password", text: $password)
                .textContentType(.password)
            
            Spacer()
        }
    }
}

struct forgotAndShowPassword: View {
    var body: some View {
        HStack {
            Text("Forgot Password?")
                .foregroundColor(.blue)
                .font(Font.system(size: 13))
                .padding()
            
            Spacer()
            
            Text("Show Password")
                .font(Font.system(size: 13))
                .padding()
        }
    }
}

struct loginButton: View {
    var body: some View {
        HStack {
            Button {
                print("logged in")
            } label: {
                Text("Login")
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 10).fill(.green))
            .foregroundColor(.white)
        }
        .padding()
    }
}

struct orLine: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: .infinity, height: 0.5)
                .foregroundColor(.gray)
            
            Text("or")
                .foregroundColor(.gray)
                .padding(.horizontal)
                .background(RoundedRectangle(cornerRadius: 10).fill(.white))
        }
    }
}

struct googleLogin: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10, antialiased: true)
                .frame(width: .infinity, height: 60)
                .padding()
                .foregroundColor(Color("TextFieldColor"))
            
            Image("Google")
                .resizable()
                .frame(width: 25, height: 25)
        }
    }
}

struct facebookLogin: View {
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10, antialiased: true)
                .frame(width: .infinity, height: 60)
                .padding()
                .foregroundColor(Color("TextFieldColor"))
            
            Image("Facebook")
                .resizable()
                .frame(width: 25, height: 25)
        }
    }
}
