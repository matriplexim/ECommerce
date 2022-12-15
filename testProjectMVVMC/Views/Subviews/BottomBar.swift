//
//  BottomBar.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {
        HStack(spacing: 49) {
            Spacer()
            Text("\(Image("ellipse")) Explorer")
                .font(.custom("Mark-Bold", size: 15))
            Image("bag")
            Image("heartSecond")
            Image("person")
            Spacer()
        }
        .foregroundColor(.white)
        .background(
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 72)
                .foregroundColor(Color("violet"))
        )
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}
