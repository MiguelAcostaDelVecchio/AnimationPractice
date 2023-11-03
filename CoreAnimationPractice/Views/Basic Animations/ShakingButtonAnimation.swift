//
//  ShakingAnimation.swift
//  AnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 11/2/23.
//

import SwiftUI

struct ShakingButtonAnimation: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    @State private var cnt = 0
    let inputText: String
    
    var body: some View {
        Button(action: {
            cnt += 1
        }, label: {
            Text(inputText).font(.body).bold().multilineTextAlignment(.center).padding().border(accentColor, width: 4).modifier(ShakeEffect(animatableData: CGFloat(cnt)))
        }).foregroundColor(.black)
    }
}

struct ShakeEffect : GeometryEffect {
    var travelDistance: CGFloat = 10
    var numOfShakes: CGFloat = 4
    var animatableData: CGFloat
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX: travelDistance * sin(animatableData * .pi * numOfShakes), y: 0))
    }
}

#Preview {
    ShakingButtonAnimation(inputText: "Testing")
}
