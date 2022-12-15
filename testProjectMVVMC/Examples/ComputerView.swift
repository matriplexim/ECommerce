//
//  ComputerView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct ComputerView: View {
    var body: some View {
        ZStack {
            Color(.red).ignoresSafeArea()
            Text("Computer View")
                .font(.custom("Mark-Bold", size: 30))
        }
    }
}

struct ComputerView_Previews: PreviewProvider {
    static var previews: some View {
        ComputerView()
    }
}
