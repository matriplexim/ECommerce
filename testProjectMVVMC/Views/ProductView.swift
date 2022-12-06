//
//  ProductView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import SwiftUI

struct ProductView: View {
    
    @StateObject var viewModel = ProductViewModel()
    
    var body: some View {
        VStack {
            ForEach(viewModel.product) { item in
                Text(item.title)
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
