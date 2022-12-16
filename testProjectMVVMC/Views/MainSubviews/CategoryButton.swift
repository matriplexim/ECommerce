//
//  CategoryButton.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct CategoryButton: View {
    let imageName: String
    let text: String
    @Binding var isSelected: Bool
    var body: some View {
        VStack(spacing: 30) {
            Image(imageName)
                .foregroundColor(isSelected ? .white : .secondary)
                .background(
                    Circle()
                        .frame(width: 71, height: 71)
                        .foregroundColor(isSelected ? Color("orange") : Color("filter"))
                        .shadow(radius: 5)
            )
            Text(text)
                .foregroundColor(isSelected ? Color("orange") : .primary)
                .font(.custom("Mark-Medium", size: 12))
        }
        .frame(width: 71, height: 71)
    }
}

struct CategoryButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryButton(imageName: "phone", text: "Phones", isSelected: .constant(false))
    }
}
