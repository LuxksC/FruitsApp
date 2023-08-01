//
//  HomeView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 01/08/23.
//

import SwiftUI

struct HomeView: View {
//    @AppStorage(UserDefaultKeys.isOnboardingViewed) var isOnboardingViewed: Bool?
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowListView(fruit: fruit)
                        .padding(.vertical, 4)
                        .alignmentGuide(.listRowSeparatorLeading) { _ in
                            return 0 // set list row separator leading to the border of the cell
                            // by default, after iOS 16, the list separator will be aligned with the text and not the image
                        }
                }
            }
            .navigationTitle("Fruits")
            .listStyle(.plain) // applys the list style to all the page
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
