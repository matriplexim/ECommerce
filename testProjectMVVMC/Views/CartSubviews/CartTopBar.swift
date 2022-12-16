//
//  CartTopBar.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 17.12.2022.
//

import SwiftUI

struct CartTopBar: View {
    @Binding var showCart: Bool
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button {
                    showCart.toggle()
                } label: {
                    Image("backProduct")
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 37, height: 37)
                                .foregroundColor(Color("violet"))
                        )
                }
                Spacer()
                
                HStack(spacing: 19) {
                    Text("Add address")
                        .font(.custom("Mark-Medium", size: 15))
                    Button {
                        
                    } label: {
                        Image("placeCart")
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 37, height: 37)
                                    .foregroundColor(Color("orange"))
                            )
                    }
                }


            }
            Text("My Cart")
                .font(.custom("Mark-Bold", size: 35))
                .padding(.top, 50)
                .padding(.leading, -14)
        }
        .padding(.top, 25)
        .padding(.leading, 42)
        .padding(.trailing, 35)
    }
}

struct CartTopBar_Previews: PreviewProvider {
    static var previews: some View {
        CartTopBar(showCart: .constant(false))
    }
}
