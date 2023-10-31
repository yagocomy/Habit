//
//  HabitApp.swift
//  Habit
//
//  Created by Yago De Moura Silva on 25/10/23.
//

import SwiftUI

@main
struct HabitApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
