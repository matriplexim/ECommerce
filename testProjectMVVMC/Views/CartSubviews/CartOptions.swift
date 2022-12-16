//
//  CartOptions.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 17.12.2022.
//

import SwiftUI

struct CartOptions: View {
    var cartItem: [Basket]
    let delivery: String
    let total: Int
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .ignoresSafeArea(edges: .bottom)
                .foregroundColor(Color("violet"))
                .shadow(radius: 5)
            VStack {
                VStack(spacing: 45) {
                    ForEach(cartItem) { item in
                        CartHStack(imageName: item.images, title: item.title, price: item.price)
                    }
                }
                .padding(.top, 80)
                Spacer()
                
                Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.white)
                    .opacity(0.2)
                    .padding(.bottom, 15)
                
                HStack {
                    Text("Total")
                        .font(.custom("Mark-Regular", size: 15))
                    Spacer()
                    Text("$\(total) us")
                        .font(.custom("Mark-Bold", size: 15))
                }
                .padding(.bottom, 12)
                .padding(.leading, 55)
                .padding(.trailing, 38)
                .foregroundColor(.white)
                
                HStack {
                    Text("Delivery")
                        .font(.custom("Mark-Regular", size: 15))
                    Spacer()
                    Text(delivery)
                        .font(.custom("Mark-Bold", size: 15))
                }
                .padding(.bottom, 26)
                .padding(.leading, 55)
                .padding(.trailing, 76)
                .foregroundColor(.white)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.white)
                    .opacity(0.2)
                    .padding(.bottom, 27)
                
                Button {
                    
                } label: {
                    Text("Checkout")
                        .font(.custom("Mark-Bold", size: 20))
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 326, height: 54)
                                .foregroundColor(Color("orange"))
                        )
                }

            }
        }
    }
}

struct CartOptions_Previews: PreviewProvider {
    static var previews: some View {
        CartOptions(cartItem: [Basket(id: 1, images: "https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg", price: 1500, title: "Galaxy Note 20 Ultra")], delivery: "Free", total: 3300)
    }
}
