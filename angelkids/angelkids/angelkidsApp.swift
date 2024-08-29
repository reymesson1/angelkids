//
//  angelkidsApp.swift
//  angelkids
//
//  Created by Rey Messon on 8/28/24.
//

import SwiftUI

@main
struct angelkidsApp: App {
    @StateObject private var userViewModel = UserViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(userViewModel)
        }
    }
}
