//
//  MultipleButtonToggleView.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/13/23.
//

import SwiftUI

struct MultipleButtonToggleView: View {
    var choiceList = ["Choice 1", "Choice 2", "Choice 3", "Choice 4"]
    @State var isTapped = [false, false, false, false]
    var choiceIsCorrect = [false, false, true, false]
    @State var allowUserToGuessAgain = true
    
    var body: some View {
        Spacer()
        
        VStack {
            Text("Multiple Choices. Only Choice #3 is correct!")
                .bold()
                .font(.title3)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Toggle(isOn: $allowUserToGuessAgain, label: {Text("Allow user to undo their guesses")})
                .padding()
            
            VStack {
                Spacer()
                ForEach(0..<choiceList.count) {
                    answerIndex in
                    
                    Button(action: {
                        if allowUserToGuessAgain == true {
                            isTapped[answerIndex].toggle()
                        } else {
                            if isTapped[answerIndex] == false {
                                isTapped[answerIndex].toggle()
                            }
                        }
                    }, label: {MBT_TextView(choiceList: choiceList, answerIndex: answerIndex, isTapped: $isTapped, choiceIsCorrect: choiceIsCorrect)})
                    // isTapped[answerIndex] ? .green : .red
                    .foregroundColor(.black)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    MultipleButtonToggleView()
}
