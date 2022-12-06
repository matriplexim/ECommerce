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
        VStack {
            ForEach(viewModel.homeData) { item in
                Text(item.title)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
