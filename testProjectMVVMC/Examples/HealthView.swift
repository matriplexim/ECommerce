//
//  HealthView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct HealthView: View {
    var body: some View {
        ZStack {
            Color(.blue).ignoresSafeArea()
            Text("Health View")
                .font(.custom("Mark-Bold", size: 30))
        }
    }
}

struct HealthView_Previews: PreviewProvider {
    static var previews: some View {
        HealthView()
    }
}
