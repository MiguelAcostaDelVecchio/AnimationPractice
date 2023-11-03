//
//  HomeScreenNavigationLabel.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct OldHomeScreenNavigationLabelView: View {
    let topicTitle: String
    var body: some View {
        Text(topicTitle)
                .bold()
                .font(.title2)
                .padding(6)
                .border(.gray, width: 4)
            .padding()
    }
}

#Preview {
    OldHomeScreenNavigationLabelView(topicTitle: "Example")
}
