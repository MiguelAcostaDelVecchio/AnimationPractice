//
//  ShakingButtonView.swift
//  AnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 11/2/23.
//

import SwiftUI

struct ShakingButtonView: View {
    var body: some View {
        VStack {
            Text("Please press the button to see it shake!")
                .bold()
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            Spacer()
            ShakingButtonAnimation(inputText: "Test")
            Spacer()
        }
    }
}

#Preview {
    ShakingButtonView()
}
