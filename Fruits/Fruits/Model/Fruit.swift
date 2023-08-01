//
//  Fruit.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 01/08/23.
//

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
