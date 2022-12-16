//
//  CartView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var viewModel = CartViewModel()
    @Binding var showCart: Bool
    
    var body: some View {
        VStack {
            CartTopBar(showCart: $showCart)
            ForEach(viewModel.cart) { item in
                CartOptions(cartItem: item.basket, delivery: item.delivery, total: item.total)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(showCart: .constant(false))
    }
}
