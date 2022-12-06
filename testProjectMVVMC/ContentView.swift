//
//  ContentView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 03.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainView()
                .foregroundColor(.blue)
            ProductView()
                .foregroundColor(.green)
            CartView()
                .foregroundColor(.yellow)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
