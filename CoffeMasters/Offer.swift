//
//  Offer.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 19/08/24.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""

    var body: some View {
        VStack {
            Text(title)
                .padding()
                .font(Font.title)
            Text(description)
                .padding()
        }
    }
}
