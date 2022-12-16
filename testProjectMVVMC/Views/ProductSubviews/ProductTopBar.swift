//
//  ProductTopBar.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 17.12.2022.
//

import SwiftUI

struct ProductTopBar: View {
    @Binding var showProduct: Bool
    @Binding var showCart: Bool
    var body: some View {
        HStack {
            Button {
                showProduct.toggle()
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
            
            Text("Product Details")
                .font(.custom("Mark-Medium", size: 18))
            
            Spacer()
            
            Button {
                showCart.toggle()
            } label: {
                Image("cartProduct")
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 37, height: 37)
                            .foregroundColor(Color("orange"))
                    )
            }


        }
        .padding(.top, 25)
        .padding(.leading, 42)
        .padding(.trailing, 35)
    }
}

struct ProductTopBar_Previews: PreviewProvider {
    static var previews: some View {
        ProductTopBar(showProduct: .constant(false), showCart: .constant(false))
    }
}
