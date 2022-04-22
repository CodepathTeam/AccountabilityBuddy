//
//  ProgressBarView.swift
//  AccountabilityBuddy
//
//  Created by Yanelys on 4/22/22.
//

import SwiftUI

struct ProgressBarView: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 0
    var color1 = Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
    
    var body: some View {
        let multiplier = width / 100
        ZStack( alignment: .leading) {
            
        
        RoundedRectangle(cornerRadius: height, style: .continuous)
                .frame(width: width , height: height)
            .foregroundColor(Color.black.opacity(0.1))
            
            RoundedRectangle(cornerRadius: width, style: .continuous)
                .frame(width: percent * multiplier ,height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [color1,color2]),
                                   startPoint: .leading, endPoint: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: height,style: .continuous))
                    
            )
                .foregroundColor(.clear)
    }
}
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
