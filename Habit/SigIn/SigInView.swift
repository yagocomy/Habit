//
//  SigInView.swift
//  Habit
//
//  Created by Yago De Moura Silva on 31/10/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    
    @State var action: Int? = 0
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            NavigationView {
                VStack(alignment: .center, spacing: 20) {
                    
                    Spacer(minLength: 36)
                    
                    VStack(alignment: .center, spacing: 8) {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal, 48)
                        Text("Login")
                            .foregroundColor(.orange)
                            .font(Font.system(.title).bold())
                            .padding(.bottom, 8)
                        numberField
                        passwordField
                        enterButton
                        registerLink
                    }
                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal, 32)
                    .background(Color.white)
                    .navigationBarTitle("Login", displayMode: .inline)
            }
        }
    }
}

extension SignInView {
    var numberField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.orange)
    }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar") {
            //aqui acontece o evento de clique
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack {
            Text("Ainda não possui um login ativo ?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink(destination: Text("Tela de cadastro"),
                               tag: 1,
                               selection: $action,
                               label: {EmptyView() })
                
                Button("Realize seu cadastro"){
                    self.action = 1
                }
            }
        }
    }
}

struct SgnInView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}
