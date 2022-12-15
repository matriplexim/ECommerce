//
//  CartView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel = CartViewModel()
    
    var body: some View {
        VStack {
            Text("Cart View")
            ForEach(viewModel.cart) { item in
                ForEach(item.basket) { basketItem in
                    Text(basketItem.title)
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
