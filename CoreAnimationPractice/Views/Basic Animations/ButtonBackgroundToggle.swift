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
        Button(action: {
            isTapped.toggle()
        }, label: {Text("Example")
                .font(.title)
                .bold()
                .padding(10)
                .border(.black, width: 4)
            .background(isTapped ? .green : .red)})
        .foregroundColor(.black)
    }
}

#Preview {
    ButtonBackgroundToggle()
}
