//
//  CategoryTapBar.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct CategoryTapBar: View {
    @Binding var tabIndex: Int
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 23) {
                CategoryButton(imageName: "phone", text: "Phones", isSelected: .constant(tabIndex == 0))
                    .onTapGesture { onButtonTapped(index: 0) }
                CategoryButton(imageName: "pc", text: "Computer", isSelected: .constant(tabIndex == 1))
                    .onTapGesture { onButtonTapped(index: 1) }
                CategoryButton(imageName: "heart", text: "Health", isSelected: .constant(tabIndex == 2))
                    .onTapGesture { onButtonTapped(index: 2) }
                CategoryButton(imageName: "books", text: "Books", isSelected: .constant(tabIndex == 3))
                    .onTapGesture { onButtonTapped(index: 3) }
                CategoryButton(imageName: "books", text: "Something", isSelected: .constant(tabIndex == 4))
                    .onTapGesture { onButtonTapped(index: 4) }
            }
            .padding(.horizontal, 20)
            .frame(height: 130)
            
        }
    }
    
    private func onButtonTapped(index: Int) {
        withAnimation { tabIndex = index }
    }
}

struct CategoryTapBar_Previews: PreviewProvider {
    static var previews: some View {
        CategoryTapBar(tabIndex: .constant(0))
    }
}
