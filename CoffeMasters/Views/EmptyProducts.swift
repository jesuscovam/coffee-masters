//
//  EmptyProducts.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 20/08/24.
//

import SwiftUI

struct EmptyProducts: View {
    var description = ""
    var body: some View {
        ContentUnavailableView {
            Label("No coffees", systemImage: "cup.and.saucer")
        } description: {
            Text(description)
        }
    }
}

#Preview {
    EmptyProducts()
}
