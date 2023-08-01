//
//  FruitRowListView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 01/08/23.
//

import SwiftUI

struct FruitRowListView: View {
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original) // avoid navigation link default colors beeing applied to the image
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.3),
                    radius: 3, x: 2, y: 2
                )
                .background(LinearGradient(
                    colors: fruit.gradientColors,
                    startPoint: .top,
                    endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FruitRowListView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowListView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
