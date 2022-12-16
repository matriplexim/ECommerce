//
//  MainView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    @Binding var showMain: Bool
    @Binding var showProduct: Bool
    
    var body: some View {
        MainTopPlace(showProduct: $showProduct, showMain: $showMain, dataHomeStore: viewModel.homeStore, dataBestSeller: viewModel.bestSeller)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(showMain: .constant(true), showProduct: .constant(false))
    }
}
