// MenuPage.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI

struct MenuPage: View {
    @EnvironmentObject var menuManager: MenuManager
    var body: some View {
        NavigationStack {
            List {
                if menuManager.menu.count == 0 {
                    EmptyProducts(description: "We couldnt get our products")
                } else {
                    ForEach(menuManager.menu) { category in
                        Text(category.name)

                        ForEach(category.products) { product in
                            NavigationLink {
                                ProductDetailsPage(product: product)
                            } label: {
                                ProductItem(product: product)
                            }
                        }
                    }
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
