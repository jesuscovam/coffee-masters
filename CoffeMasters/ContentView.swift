//
//  ContentView.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 18/08/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrdersPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }.badge(cartManager.products.count)
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView()
}
