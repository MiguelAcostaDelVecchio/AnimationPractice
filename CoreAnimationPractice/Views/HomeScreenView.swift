//
//  testingNavigationViewList.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/14/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView {
            List {
                
                Section { // First section
                    NavigationLink(destination: SimpleRectangleAnimation(), label: {Text("Simple Rectangle Animation").bold()})
                }
                
                Section { // second section
                    NavigationLink(destination: ButtonBackgroundToggle(), label: {Text("Button Background Toggle").bold()})
                    
                    NavigationLink(destination: MultipleButtonToggleView(), label: {Text("Multiple Choice Background Toggle").bold()})
                }
                
                Section { // third section
                    NavigationLink(destination: ShakingButtonView(), label: {Text("Shaking Button Animation").bold()})
                    
                    NavigationLink(destination: MultipleButtonsShaking(), label: {Text("Multple Choice With Shaking ").bold()})
                }
            }
            .navigationBarTitle("Animation Practice", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Animation Practice")
                        .bold()
                        .font(.title)
                        .padding(.top, 25)
                }
            }
        }
    }
}

#Preview {
    HomeScreenView()
}
