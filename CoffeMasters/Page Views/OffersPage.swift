//
//  OffersPage.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationStack {
            List {
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 6am to 9am.")
                Offer(title: "Welcome Gift", description: "25% off on your first order.")
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
