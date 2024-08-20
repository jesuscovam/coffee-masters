//
//  OrderItem.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 20/08/24.
//

import SwiftUI

struct OrderItem: View {
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager

    var body: some View {
        HStack {
            Text("\(item.1)")
            Text("\(item.0.name)")
            Spacer()
            Text("\(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .font(.title)
                .foregroundColor(Color("Secondary"))
                .padding()
                .onTapGesture {
                    cartManager.remove(product: item.0)
                }
        }
    }
}
