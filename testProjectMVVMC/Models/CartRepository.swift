//
//  CartRepository.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import Foundation
import Combine

class CartRepository {
    func getData() -> AnyPublisher<Cart,Error> {
        guard let url = URL(string: "https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149") else { fatalError("Irright URL") }
        let request = URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .map {$0.data}
            .decode(type: Cart.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return request
    }
}
