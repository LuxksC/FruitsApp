//
//  GroupBoxLabelView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 08/08/23.
//

import SwiftUI

struct GroupBoxLabelView: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack {
            Text(title.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: icon)
        }
    }
}

struct GroupBoxLabelView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxLabelView(title: "Fructus", icon: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
