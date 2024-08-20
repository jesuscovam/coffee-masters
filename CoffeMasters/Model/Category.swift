//
//  Category.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 20/08/24.
//

import Foundation

struct Category: Decodable, Identifiable {
    var name: String
    var products: [Product]
    var id: String {
        return name
    }
}
