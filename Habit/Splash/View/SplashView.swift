//
//  SplashView.swift
//  Habit
//
//  Created by Yago De Moura Silva on 25/10/23.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    @State var showAlert = false
    
    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen:
            Text("Carregar tela Principal")
        case .error(let msg):
            Text("Mostrar erro: \(msg)")
            loadingView(error: msg)
        }
    }
}

extension SplashView {
    
    func loadingView(error: String? = nil ) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
            
            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("OK")))
                    }
            }
        }
    }
}

#Preview {
    SplashView(state: .error("Teste de erro no servidor"))
}
