//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Yago De Moura Silva on 31/10/23.
//

import SwiftUI

enum SplashViewRouter {
  
  static func makeSignInView() -> some View {
    let viewModel = SignInViewModel()
    return SignInView(viewModel: viewModel)
  }
}
