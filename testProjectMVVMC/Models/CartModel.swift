//
//  CartModel.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 07.12.2022.
//
import Foundation

struct Cart: Codable, Identifiable {
    let basket: [Basket]
    let delivery, id: String
    let total: Int
}

struct Basket: Codable, Identifiable {
    let id: Int
    let images: String
    let price: Int
    let title: String
}
