//
//  MainBottomPlace.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct SearchButton: View {
    @State var text = ""
    var body: some View {
        HStack {
            Spacer()
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("orange"))
                    .frame(width: 12, height: 12)
                TextField("Search", text: $text)
                    .font(.custom("Mark-Bold", size: 12))
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 10)
            .background(RoundedRectangle(cornerRadius: 30))
            .foregroundColor(Color("filter"))
            .shadow(radius: 5)
            Button {
                
            } label: {
                Image("qr")
                    .foregroundColor(Color("filter"))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    .background(
                        Circle()
                            .foregroundColor(Color("orange"))
                            .shadow(radius: 5)
                    )
            }

            Spacer()
        }
        .padding(.horizontal, 32)
    }
}

struct SearchButton_Previews: PreviewProvider {
    static var previews: some View {
        SearchButton()
    }
}
