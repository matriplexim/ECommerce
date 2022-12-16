//
//  ProductCarouselViewModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import Foundation
import SwiftUI

class ProductGeoViewModel: ObservableObject {
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        return Double(1 - (currentX / maxDistance))
    }
}
