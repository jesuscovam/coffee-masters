//
//  Product.swift
//  CoffeMasters
//
//  Created by Jesus Cova on 20/08/24.
//

import Foundation

struct Product: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String?
    var price: Double
    var image: String = ""

    var imageURL: URL {
        URL(string: "https://firtman.github.io/coffeemasters/api/images/\(image)")!
    }
}
