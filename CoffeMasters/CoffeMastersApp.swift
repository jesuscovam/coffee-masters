//
//  CoffeMastersApp.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 18/08/24.
//

import SwiftUI

@main
struct CoffeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
