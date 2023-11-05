//
//  BegginnerTutorialView.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct SimpleRectangleAnimation: View {
    @State var isAnimated = false
    var body: some View {
        VStack {
            Text("Please tap on the rectangle to see what happens!")
                .bold()
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            Spacer()
            Rectangle()
                .frame(width: 100, height: 100) // size of the rectangle
                .foregroundColor(.black) // color of the rectangle
                .scaleEffect(isAnimated ? 2.0 : 1) // scaling factor
                .opacity(isAnimated ? 0.5 : 1) // transparency
                .offset(y: isAnimated ? 100 : 0) // distance to offset
                .onTapGesture { // what happens when element is tapped
                    withAnimation{self.isAnimated.toggle()}
                }
                .padding()
            Spacer()
        }
    }
}

#Preview {
    SimpleRectangleAnimation()
}
