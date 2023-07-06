//
//  C_est_pour_BibiApp.swift
//  C'est pour Bibi
//
//  Created by Mathis Rosset on 05/07/2023.
//

import SwiftUI

@main
struct C_est_pour_BibiApp: App {
    @StateObject var data = Members()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ContentView()
            }.environmentObject(data)
        }
            
    }
}
