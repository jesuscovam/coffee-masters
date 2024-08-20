//
//  ProductDetailsPage.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI

struct ProductDetailsPage: View {
    var product: Product
    @State private var quantity = 1
    @EnvironmentObject var cartManager: CartManager
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ScrollView {
                AsyncImage(url: product.imageURL)
                    .frame(maxWidth: .infinity, idealHeight: 150, maxHeight: 150)
                    .padding(.top, 32)

                Text(product.name)
                    .frame(maxWidth: .infinity)
                    .multilineTextAlignment(.leading)
                    .padding(24)

                if let description = product.description {
                    Text(description)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.leading)
                        .padding(24)
                        .foregroundColor(Color("Primary"))
                }

                HStack {
                    Text("$ \(product.price, specifier: "%.2f") eo")
                    Stepper(value: $quantity, in: 1 ... 10) {}
                }
                .frame(maxWidth: .infinity)
                .padding(30)

                Text("Subtotal $\(product.price * Double($quantity.wrappedValue), specifier: "%.2f")")
                    .bold()
                    .padding(12)

                Button("Add \(quantity) to Cart") {
                    cartManager.add(product: product, quantity: quantity)
                    dismiss()
                }
                .padding()
                .frame(width: 250)
                .background(Color("Alternative2"))
                .foregroundColor(.black)
                .cornerRadius(25)
            }
        }.navigationTitle(product.name)
    }
}

#Preview {
    ProductDetailsPage(product: Product(id: 1, name: "coffee1", price: 10.0))
}
