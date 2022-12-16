//
//  RatingOptions.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import SwiftUI

struct RatingOptions: View {
    let rating: Double
    var body: some View {
        HStack(spacing: 9){
            if rating <= 1 {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else if rating <= 2 {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else if rating <= 3 {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else if rating <= 4 {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RatingOptions_Previews: PreviewProvider {
    static var previews: some View {
        RatingOptions(rating: 5)
    }
}
