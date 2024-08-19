//
//  ContentView.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 18/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var nombre: String = ""

    var body: some View {
        VStack {
            Offer(title: "mi titulo", description: "una desc")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
