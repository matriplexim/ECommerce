//
//  CartHStack.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 17.12.2022.
//

import SwiftUI

struct CartHStack: View {
    let imageName: String
    let title: String
    let price: Int
    var body: some View {
        HStack {
            HStack(spacing: 0) {
                AsyncImage(url: URL(string: imageName)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Color("orange")
                }
                .frame(width: 88, height: 88)
                .cornerRadius(15)
                .shadow(radius: 5)
                VStack(alignment: .leading ,spacing: 6) {
                    Text(title)
                        .foregroundColor(.white)
                        .frame(width: 155, height: 55)
                    Text("$\(price).00")
                        .foregroundColor(Color("orange"))
                        .frame(width: 125, height: 25)
                }
                .font(.custom("Mark-Medium", size: 20))
            }
            Spacer()
            HStack(spacing: 17) {
                VStack(alignment: .center) {
                    Text("-")
                        .padding(.top, 8)
                    Text("1")
                    Text("+")
                        .padding(.bottom, 15)
                }
                .font(.custom("Mark-Medium", size: 20))
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 26)
                        .frame(width: 26, height: 68)
                        .foregroundColor(Color(uiColor: UIColor(hex: "#282843")))
                        
                )
                Image("bucket")
                    .foregroundColor(Color(uiColor: UIColor(hex: "#36364D")))
            }
        }
        .padding(.horizontal, 33)
    }
}

struct CartHStack_Previews: PreviewProvider {
    static var previews: some View {
        CartHStack(imageName: "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg", title: "Galaxy Note 20 Ultra", price: 1500)
    }
}
