//
//  CoreAnimationListIntroViews.swift
//  CoreAnimationPractice
//
//  Created by Miguel Acosta Del Vecchio on 10/15/23.
//

import SwiftUI

struct CoreAnimationListIntroViews: View {
    var body: some View {
        NavigationStack {
            List{
                NavigationLink(destination: EmptyView(), label: {Text("Horizontal Translation").bold()})
            }
            .navigationBarTitle("Horizontal Translation", displayMode: .inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Core Animation Basics")
                        .bold()
                        .font(.title)
                        .padding(.top, 25)
                }
            }
        }
    }
}

#Preview {
    CoreAnimationListIntroViews()
}
