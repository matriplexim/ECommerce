//
//  ProductRepository.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import Foundation
import Combine

class ProductRepository {
    func getData() -> AnyPublisher<Product, Error> {
        guard let url = URL(string: "https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5") else {
            fatalError("Irright URL")
        }
        let request = URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .map {$0.data}
            .decode(type: Product.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return request
    }
}
