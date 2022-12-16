//
//  ContentView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 03.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var showMain = true
    @State var showProduct = false
    @State var showCart = false
    var body: some View {
        if showMain && showProduct && showCart {
            CartView(showCart: $showCart)
        } else if showMain && showProduct{
            ProductView(showProduct: $showProduct, showCart: $showCart)
        } else if showMain {
            MainView(showMain: $showMain, showProduct: $showProduct)
        } else {
            ZStack {
                
            }
            .ignoresSafeArea()
            .foregroundColor(Color("orange"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
