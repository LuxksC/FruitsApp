//
//  OnboardingCardView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 28/07/23.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating: Bool = false
    
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)

                Text(fruit.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.5),
                        radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity) // strategy to make the component occupie all the screen space
        .background(LinearGradient(
            colors: fruit.gradientColors,
            startPoint: .top,
            endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .padding(.horizontal)
    }
}
