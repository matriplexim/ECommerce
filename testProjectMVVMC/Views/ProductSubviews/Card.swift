//
//  Card.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import SwiftUI

struct Card: View {
    let imageName: String
    var body: some View {
        AsyncImage(url: URL(string: imageName)) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            Color("orange")
        }
        .frame(width: 266, height: 335)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(imageName: "https://avatars.mds.yandex.net/get-mpic/5235334/img_id5575010630545284324.png/orig")
    }
}
