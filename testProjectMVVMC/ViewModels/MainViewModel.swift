//
//  MainViewModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//

import Foundation
import Combine

class MainViewModel: ObservableObject{
    @Published var homeStore = [HomeStore]()
    @Published var bestSeller = [BestSeller]()
    
    let dataRep     = MainRepository()
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
            } receiveValue: { [weak self] value in
                self?.bestSeller = value.bestSeller
                self?.homeStore = value.homeStore
            }
            .store(in: &cancellable)
    }
}
