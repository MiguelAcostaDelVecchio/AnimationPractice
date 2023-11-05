//
//  MBT_TextView.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct MBT_TextView: View {
    let choiceList: [String]
    let answerIndex: Int
    @Binding var isTapped: [Bool]
    let choiceIsCorrect: [Bool]
    var textBoxBackgroundColor: Color {
        if choiceIsCorrect[answerIndex] == true {
            return .green
        } else {
            return .red
        }
    }
    
    var body: some View {
        Text(choiceList[answerIndex])
                .font(.title)
                .bold()
                .padding(10)
                .border(.black, width: 4)
                .background(isTapped[answerIndex] ? textBoxBackgroundColor : .clear)
    }
}
/*
#Preview {
    MBT_TextView(choiceList: ["Choice 1", "Choice 2", "Choice 3", "Choice 4"], answerIndex: 1, isTapped: .constant([false, false, false, false]), choiceIsCorrect: [false, false, true, false])
}*/
