//
//  ProductViewModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//

import Foundation
import Combine

class ProductViewModel: ObservableObject {
    @Published var product = [Product]()
    
    let dataRep     = ProductRepository()
    var cancellable = Set<AnyCancellable>()
    
    init() {
        fetchData()
    }
    
    func fetchData() {
        dataRep.getData()
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print(error)
                case .finished:
                    break
                }
            } receiveValue: {[weak self] data in
                self?.product.append(data)
            }
            .store(in: &cancellable)

    }
}
