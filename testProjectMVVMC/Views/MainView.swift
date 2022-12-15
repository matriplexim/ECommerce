//
//  MainView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        MainBottomPlace(dataHomeStore: viewModel.homeStore, dataBestSeller: viewModel.bestSeller)
//        ZStack {
//            Color(.systemMint)
//                .ignoresSafeArea()
//            Text("MainView")
//                .font(.custom("Mark-Heavy", size: 50))
//        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
