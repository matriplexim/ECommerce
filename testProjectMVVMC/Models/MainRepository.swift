//
//  MainRepository.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//

import Foundation
import Combine

class MainRepository {
    func getData() -> AnyPublisher<Welcome, Error> {
        guard let url = URL(string: "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175") else {
            fatalError("Irright URL")
        }
        let request = URLSession.shared.dataTaskPublisher(for: url)
            .receive(on: DispatchQueue.main)
            .map {$0.data}
            .decode(type: Welcome.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
        return request
    }
}
