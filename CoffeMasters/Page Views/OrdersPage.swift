//
//  OrdersPage.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI

struct OrdersPage: View {
    @EnvironmentObject var menuManager: MenuManager
    @EnvironmentObject var cartManager: CartManager

    @AppStorage("name") var name = ""
    @AppStorage("phone") var phone = ""

    @State var orderConfirmed = false

    var body: some View {
        NavigationView {
            if cartManager.products.count == 0 {
                EmptyProducts(description: "Coffess added to your cart will appear here")
            } else {
                List {
                    Section("Items") {
                        ForEach(cartManager.products, id: \.0.id) { item in
                            OrderItem(item: item)
                        }
                    }.listRowBackground(Color("Background"))

                    Section("YOUR DETAILS") {
                        VStack {
                            TextField("Your name", text: $name)
                                .textFieldStyle(.roundedBorder)
                            Spacer().frame(height: 20)
                            TextField("Your phone #", text: $phone)
                                .keyboardType(.phonePad)
                                .textFieldStyle(.roundedBorder)
                        }
                        .padding(.top)
                        .padding(.bottom)
                    }.listRowBackground(Color("Background"))

                    Section {
                        HStack {
                            Spacer()
                            Text("Total")
                            Spacer()
                            Text("$ \(cartManager.total(), specifier: "%.2f")")
                                .bold()
                            Spacer()
                        }
                    }.listRowBackground(Color.clear)

                    Section {
                        HStack {
                            Spacer()
                            Button("Place Order") {
                                orderConfirmed = true
                            }
                            .padding()
                            .frame(width: 250)
                            .background(Color("Alternative2"))
                            .foregroundColor(.black)
                            .cornerRadius(25)

                            Spacer()
                        }
                    }.listRowBackground(Color.clear)
                }
                .listSectionSeparatorTint(Color("AccentColor"))
                .listStyle(.insetGrouped)
                .navigationTitle("Your Order")
            }
        }
    }
}

#Preview {
    OrdersPage()
}
