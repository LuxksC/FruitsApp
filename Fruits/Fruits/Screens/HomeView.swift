//
//  HomeView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 01/08/23.
//

import SwiftUI

struct HomeView: View {
    @State private var isShowingSettingsSheet: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack { // iOS 16
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitsDetailView(fruit: fruit)) {
                        FruitRowListView(fruit: fruit)
                            .padding(.vertical, 4)
                            .alignmentGuide(.listRowSeparatorLeading) { _ in
                                return 0 // set list row separator leading to the border of the cell
                                // by default, after iOS 16, the list separator will be aligned with the text and not the image
                            }
                    }
                }
            }
            .navigationTitle("Fruits")
            .listStyle(.plain) // applys the list style to all the page
            .toolbar() {
                Button(action: {
                    isShowingSettingsSheet = true
                }, label: {
                    Image(systemName: "gearshape")
                })
                .sheet(isPresented: $isShowingSettingsSheet) {
                    SettingsView()
                }
            }
        }
//        .navigationViewStyle(StackNavigationViewStyle()) // iOS 14
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
