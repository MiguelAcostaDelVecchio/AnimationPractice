//
//  HomeScreen.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct OldHomeScreenView: View {
    let mainColor = Color(red: 30/255, green: 118/255, blue: 175/255)
    var body: some View {
        NavigationStack {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Text("Animation Practice")
                        .bold()
                        .font(.title)
                        .padding()
                    Spacer()
                    
                    // First button
                    HStack {
                        Spacer()
                        NavigationLink(destination: SimpleRectangleAnimation(), label: {OldHomeScreenNavigationLabelView(topicTitle: "Simple Rectangle Animation")})
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    // Second button
                    HStack {
                        Spacer()
                        NavigationLink(destination: ButtonBackgroundToggle(), label: {OldHomeScreenNavigationLabelView(topicTitle: "Button Background Toggle")})
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    // Third button
                    HStack {
                        Spacer()
                        NavigationLink(destination: MultipleButtonToggleView(), label: {OldHomeScreenNavigationLabelView(topicTitle: "Multiple Button Toggle")})
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                } // end of Vstack
                .foregroundColor(.black)
            } // end of Zstack
        } // end of Navigation Stack
    } // end of body
} // end of struct

#Preview {
    OldHomeScreenView()
}
