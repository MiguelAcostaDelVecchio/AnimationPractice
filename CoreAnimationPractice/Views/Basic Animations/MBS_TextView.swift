//
//  MBS_TextView.swift
//  AnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 11/2/23.
//

import SwiftUI

struct MBS_TextView: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let inputText: String
    @Binding var isTapped: Bool
    
    var body: some View {
        Button(action: {
            isTapped.toggle()
        }, label: {Text(inputText).font(.body).bold().multilineTextAlignment(.center).padding().border(accentColor, width: 4).background(isTapped ? .green : .clear)})
        .foregroundColor(.black)
    }
}

#Preview {
    MBS_TextView(inputText: "Testing", isTapped: .constant(false))
}
