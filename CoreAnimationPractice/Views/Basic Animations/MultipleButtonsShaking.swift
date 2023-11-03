//
//  MultipleButtonToggleView.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct MultipleButtonsShaking: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var choiceList = ["Choice 1", "Choice 2", "Choice 3", "Choice 4"]
    var choiceIsCorrect = [false, false, true, false]
    @State private var cnt = 0
    @State private var isTapped = false
    
    var body: some View {
        Spacer()
        
        VStack {
            Text("Let us try to shake button pressed!")
                .bold()
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            VStack {
                Spacer()
                ForEach(0..<choiceList.count) {
                    answerIndex in
                    if choiceIsCorrect[answerIndex] {
                        MBS_TextView(inputText: choiceList[answerIndex], isTapped: $isTapped)
                    } else {
                        ShakingButtonAnimation(inputText: choiceList[answerIndex])
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    MultipleButtonsShaking()
}
