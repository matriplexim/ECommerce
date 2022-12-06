//
//  MainViewModelNew.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 04.12.2022.
//
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// ОБРАЗЕЦ VIEW MODEL НЕ ДЛЯ ИЗМЕНЕНИЙ
//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//
//import Foundation
//import Combine
//import SwiftUI
//class MainViewModelNew: ObservableObject{
//    @Published var data = [Welcome]()
//    @Published var text = "String"
//    let dataRep = GetDataNew()
//    var cancellable = Set<AnyCancellable>()
//
//    init() {
//        fetchData()
//        print(data)
//    }
//
//    func fetchData() {
//        dataRep.getDataNew()
//            .sink { completion in
//                switch completion {
//                case .finished:
//                    break
//                case .failure(let error):
//                    print(error)
//                }
//            } receiveValue: { [weak self] value in
//                self?.data = value
//            }
//            .store(in: &cancellable)
//
//    }
//}
