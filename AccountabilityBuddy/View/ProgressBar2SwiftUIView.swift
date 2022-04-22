//
//  ProgressBar2SwiftUIView.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/22/22.
//

import SwiftUI

struct ProgressBar2SwiftUIView: View {
    @State var percent: CGFloat = 0
    var body: some View {
        VStack(spacing: 100){
        Text("\(Int(percent)) days")
                .font(.system(size: 40, weight: .bold))
            ProgressBarView(width: 300, height: 20, percent: percent, color1: Color(#colorLiteral(red: 0, green: 1, blue: 0, alpha: 1)), color2: Color(#colorLiteral(red:0 , green: 5, blue: 1, alpha: 1)))

                .animation(.linear)
            
            Button(action: {
                
                self.percent += 1
                
                
                
            }, label: {
                Text("Add days")
                
            })
                .padding()
            
            Button(action: {
                
                self.percent -= 1
                
                
                
            }, label: {
                Text("Show less days")
                
            })
    }
    }
}

struct ProgressBar2SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar2SwiftUIView()
    }
}
