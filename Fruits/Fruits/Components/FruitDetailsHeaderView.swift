//
//  FruitDetailsHeaderView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 02/08/23.
//

import SwiftUI

struct FruitDetailsHeaderView: View {
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 3, y: 4)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
    }
}

struct FruitDetailsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsHeaderView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
    }
}
