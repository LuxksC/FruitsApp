//
//  SettingsView.swift
//  Fruits
//
//  Created by Lucas de Castro Souza on 08/08/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    
    @Environment(\.presentationMode) private var presentationMode // variable to control presentation of the view
    // will be used to close settings sheet view programatically
    
    @AppStorage(UserDefaultKeys.isOnboardingViewed) var isOnboardingViewed: Bool = false
    
    // MARK: - Body

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - App Resume

                    GroupBox(label:
                        GroupBoxLabelView(title: "Fructus", icon: "info.circle")
                    ) {
                        Divider().padding(.vertical, 2)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fibers, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    .padding(.top)
                    .padding(.horizontal)
                
                    // MARK: - Restart Onboarding Feature

                    GroupBox(label:
                        GroupBoxLabelView(title: "Customization", icon: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 2)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcoming screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 65)
                            .layoutPriority(1) // used to make sure Swift will not truncate the text content, by default all views have 0 priority. With a higher priority, Swift will give this view the space it needs
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: Binding(
                            get: { !isOnboardingViewed },
                            set: { _ in isOnboardingViewed.toggle() })) {
                            if isOnboardingViewed {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            } else {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    .padding(.horizontal)
                    
                    
                    // MARK: - App Info
                    
                    GroupBox(label: GroupBoxLabelView(title: "Aplication", icon: "apps.iphone")) {
                        VStack {
                            AppInfoRowView(title: "Developer", content: "Luxks")
                            AppInfoRowView(title: "Designer", content: "Robert Petras")
                            AppInfoRowView(title: "Compatibility", content: "iOS 16")
                            AppInfoRowView(title: "Website", content: "Github", link: "https://github.com/LuxksC")
                            AppInfoRowView(title: "Contact", content: "LinkedIn", link: "https://linkedin.com/in/lucascastrorj/")
                            AppInfoRowView(title: "Version", content: "1.1.0")
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 20)
                }
                
            }
            .navigationTitle("Settings")
            .toolbar() {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                })
            }
        }
    }
}

// MARK: - Preview

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
