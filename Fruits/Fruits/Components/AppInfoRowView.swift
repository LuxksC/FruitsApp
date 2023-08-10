//
//  AppInfoRowView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 10/08/23.
//

import SwiftUI

struct AppInfoRowView: View {
    
    var title: String
    var content: String
    var link: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 2)
            
            if let url = link {
                Link(destination: URL(string: url)!) {
                    HStack {
                        Text(title)
                            .foregroundColor(.secondary)
                        Spacer()
                        Text(content)
                            .fontWeight(.bold)
                        Image(systemName: "arrow.up.right.circle")
                            .foregroundColor(.pink)
                    }
                }
            } else {
                HStack {
                    Text(title)
                        .foregroundColor(.secondary)
                    Spacer()
                    Text(content)
                        .fontWeight(.bold)
                }
            }
        }
    }
}

struct AppInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            AppInfoRowView(title: "Developer", content: "Luxks")
                .padding()
            
            AppInfoRowView(title: "Website", content: "Github", link: "github.com/LuxksC")
                .padding()
        }
        .previewLayout(.sizeThatFits)
        
        
    }
}
