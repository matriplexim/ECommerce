//
//  NotFoundCategory.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct NotFoundCategory: View {
    var body: some View {
        ZStack {
            Color(.gray).ignoresSafeArea()
            Text("Category Not Found")
                .font(.custom("Mark-Bold", size: 30))
        }
    }
}

struct NotFoundCategory_Previews: PreviewProvider {
    static var previews: some View {
        NotFoundCategory()
    }
}
