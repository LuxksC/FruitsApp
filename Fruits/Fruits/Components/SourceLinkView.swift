//
//  SourceLinkView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 03/08/23.
//

import SwiftUI

struct SourceLinkView: View {
    var urlLink: String
    
    var body: some View {
        Link(destination: URL(string: urlLink)!) {
            GroupBox {
                HStack{
                    Text("Content source")
                    Spacer()
                    Text("Wikipedia")
                    Image(systemName: "arrow.upright.circle")
                }
            }
            .cornerRadius(10)
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView(urlLink: "https://wikipedia.com")
            .previewLayout(.sizeThatFits)
    }
}
