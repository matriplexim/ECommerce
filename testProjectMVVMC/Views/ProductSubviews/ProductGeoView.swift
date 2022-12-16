//
//  ProductCarouselView.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import SwiftUI

struct ProductGeoView: View {
    @StateObject var viewModel = ProductGeoViewModel()
    let imageData: [String]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(imageData.indices) { index in
                    GeometryReader { geometry in
                        Card(imageName: imageData[index])
                            .rotation3DEffect(
                                Angle(degrees: viewModel.getPercentage(geo: geometry) * 15),
                                axis: (x: 0.0, y: 1.0, z: 0.0)
                            )
                    }
                    .frame(width: 266, height: 335)
                    .padding()
                }
            }
        }
    }
}

struct ProductGeoView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGeoView(imageData: ["https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig","https://www.manualspdf.ru/thumbs/products/l/1260237-samsung-galaxy-note-20-ultra.jpg"])
    }
}
