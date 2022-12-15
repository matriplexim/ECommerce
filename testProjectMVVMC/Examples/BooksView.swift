//
//  BooksView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct BooksView: View {
    var body: some View {
        ZStack {
            Color(.yellow).ignoresSafeArea()
            Text("Books View")
                .font(.custom("Mark-Bold", size: 30))
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView()
    }
}
