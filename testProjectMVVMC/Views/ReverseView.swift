//
//  ReverseView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 12.01.2023.
//

import SwiftUI

struct ReverseView: View {
    @State var isOn = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(
                    width: isOn ? 300 : 100,
                    height: isOn ? 300 : 100
                )
                .foregroundColor(isOn ? .yellow : .black)
                .animation(.default, value: isOn)
            
            Spacer()
            
            Button {
                isOn.toggle()
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 300, height: 55)
                        .foregroundColor(.blue)
                    Text("Pull up")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                }
            }

        }
    }
}

struct ReverseView_Previews: PreviewProvider {
    static var previews: some View {
        ReverseView()
    }
}
