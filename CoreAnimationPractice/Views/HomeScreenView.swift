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
                    
                    NavigationLink(destination: ButtonBackgroundToggle(), label: {Text("Button Background Toggle").bold()})
                    
                    NavigationLink(destination: MultipleButtonToggleView(), label: {Text("Multiple Button Toggle").bold()})
                }
                
                Section { // second section
                    NavigationLink(destination: CoreAnimationListIntroViews(), label: {Text("Core Animation Basics").bold()})
                }
                
                Section { // third section
                    Text("Here is another section").bold()
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
