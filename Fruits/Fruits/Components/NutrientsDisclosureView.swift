//
//  NutrientsDisclosureView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 03/08/23.
//

import SwiftUI

struct NutrientsDisclosureView: View {
    var fruit: Fruit
    var nutrientsCategories: [String] = [
        "Energy",
        "Sugar",
        "Fat",
        "Protein",
        "Vitamins",
        "Minerals"
    ]
    
    
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrientsCategories.count, id: \.self) { index in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrientsCategories[index])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[index])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }
        .cornerRadius(10)
    }
}

struct NutrientsDisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsDisclosureView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding(.horizontal)
    }
}
