//
//  BestSeller.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import SwiftUI

struct BestSellerView: View {
    let title: String
    let imageName: String
    let price: Int
    let oldPrice: Int
    let isLike: Bool
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color("filter"))
                .shadow(radius: 5)
            VStack {
                ZStack(alignment: .topTrailing) {
                    AsyncImage(url: URL(string: imageName)) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        Color("orange")
                    }
                    .frame(width: 178, height: 182)
                    .cornerRadius(15)
                    if isLike {
                        Image("heartLike")
                            .foregroundColor(Color("orange"))
                            .padding(.all, 8)
                            .background(
                                Circle()
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                            )
                            .padding(.top, 11)
                            .padding(.trailing, 16)
                    } else {
                        Image("heartDislike")
                            .foregroundColor(Color("orange"))
                            .padding(.all, 8)
                            .background(
                                Circle()
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                            )
                            .padding(.top, 11)
                            .padding(.trailing, 16)
                    }
                }
                HStack(alignment: .bottom, spacing: 7) {
                    Text("$\(price)")
                        .font(.custom("Mark-Bold", size: 16))
                        .foregroundColor(.primary)
                    Text("$\(oldPrice)")
                        .strikethrough()
                        .font(.custom("Mark-Medium", size: 10))
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.leading, 20)
                HStack {
                    Text(title)
                        .font(.custom("Mark-Regular", size: 10))
                        .foregroundColor(.primary)
                    Spacer()
                }
                .padding(.leading, 20)
                Spacer()
            }
        }
        .frame(width: 178, height: 237)
        
    }
}

struct BestSellerView_Previews: PreviewProvider {
    static var previews: some View {
        BestSellerView(title: "Samsung Note 20 Ultra", imageName: "https://shop.gadgetufa.ru/images/upload/52534-smartfon-samsung-galaxy-s20-ultra-12-128-chernyj_1024.jpg", price: 1047, oldPrice: 1500, isLike: false)
    }
}
