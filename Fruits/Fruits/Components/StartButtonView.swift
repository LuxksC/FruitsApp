//
//  StartButtonView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 28/07/23.
//

import SwiftUI

struct StartButtonView: View {
    @AppStorage(UserDefaultKeys.isOnboardingViewed) var isOnboardingViewed: Bool?
    
    var body: some View {
        Button(action: {
            print("Start button tapped")
            isOnboardingViewed = true
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(lineWidth: 1.25)
            )
        })
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
