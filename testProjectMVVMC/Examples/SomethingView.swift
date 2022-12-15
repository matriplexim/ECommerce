//
//  SomethingView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct SomethingView: View {
    var body: some View {
        ZStack {
            Color(.green).ignoresSafeArea()
            Text("Something View")
                .font(.custom("Mark-Bold", size: 30))
        }
    }
}

struct SomethingView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingView()
    }
}
