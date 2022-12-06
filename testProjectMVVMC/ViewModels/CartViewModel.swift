//
//  CartViewModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import Foundation
import Combine

class CartViewModel: ObservableObject {
    @Published var cart = [Cart]()
    
    let dataRep = CartRepository()
    var cancellable = Set<AnyCancellable>()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        dataRep.getData()
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print(error)
                }
            } receiveValue: {[weak self] data in
                self?.cart.append(data)
            }
            .store(in: &cancellable)

    }
}
