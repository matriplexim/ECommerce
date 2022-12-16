//
//  ProductView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import SwiftUI

struct ProductView: View {
    
    @StateObject var viewModel = ProductViewModel()
    @Binding var showProduct: Bool
    @Binding var showCart: Bool

    var body: some View {
        VStack {
            ProductTopBar(showProduct: $showProduct, showCart: $showCart)
            ForEach(viewModel.product) { item in
                ProductGeoView(imageData: item.images)
            }
            ForEach(viewModel.product) { item in
                ProductOptions(cpu: item.cpu, camera: item.camera, ssd: item.ssd, sd: item.sd, title: item.title, rating: item.rating, color: item.color, capacity: item.capacity, price: item.price)
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(showProduct: .constant(false), showCart: .constant(false))
    }
}
