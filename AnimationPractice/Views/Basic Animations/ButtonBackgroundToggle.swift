//
//  TextFillBackground.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct ButtonBackgroundToggle: View {
    @State var isTapped = false
    var body: some View {
        VStack{
            Text("Please press the button to see its background color change!")
                .bold()
                .font(.title2)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            Spacer()
            Button(action: {
                isTapped.toggle()
            }, label: {Text("Example")
                    .font(.title)
                    .bold()
                    .padding(10)
                    .border(.black, width: 4)
                .background(isTapped ? .green : .red)})
            .foregroundColor(.black)
            Spacer()
        }
    }
}

#Preview {
    ButtonBackgroundToggle()
}
