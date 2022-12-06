//
//  MainViewModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//

import Foundation
import Combine
import SwiftUI
class MainViewModel: ObservableObject{
    @Published var homeData = [HomeStore]()
    @Published var bestData = [BestSeller]()
    
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
                self?.bestData = value.bestSeller
                self?.homeData = value.homeStore
            }
            .store(in: &cancellable)
    }
}
