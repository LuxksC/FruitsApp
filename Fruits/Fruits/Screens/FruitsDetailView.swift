//
//  FruitsDetailView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 02/08/23.
//

import SwiftUI

struct FruitsDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        
        NavigationStack { // iOS 16
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - Header
                    FruitDetailsHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // MARK: - Title
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: - Headline
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - Nutrients
                        NutrientsDisclosureView(fruit: fruit)
                        
                        // MARK: - Subheadline
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // MARK: - Description
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // MARK: - Link
                        
                        SourceLinkView(urlLink: fruit.link)
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }
                    .padding()
                    .frame(maxWidth: 640, alignment: .center)
                }
//                .navigationTitle("")
                .navigationBarTitleDisplayMode(.inline)
            }
            .edgesIgnoringSafeArea(.top)
        }
//        .navigationViewStyle(StackNavigationViewStyle()) // iOS 14
    }
}

struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
        
    }
}
