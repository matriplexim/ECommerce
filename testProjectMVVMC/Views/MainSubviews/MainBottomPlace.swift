//
//  MainBottomPlace.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct MainBottomPlace: View {

    let dataHomeStore: [HomeStore]
    let dataBestSeller: [BestSeller]
    let columns: [GridItem] = [
        GridItem(.fixed(178), spacing: 10, alignment: nil),
        GridItem(.fixed(178), spacing: 10, alignment: nil)
    ]
    @Binding var showMain: Bool
    @Binding var showProduct: Bool
    var body: some View {
        ScrollView {
            SearchButton()
                .padding(.top, 10)
            HStack {
                Text("Hot sales")
                    .font(.custom("Mark-Bold", size: 25))
                    .foregroundColor(Color("violet"))
                Spacer()
                Button {
                    
                } label: {
                    Text("see more")
                        .foregroundColor(Color("orange"))
                        .font(.custom("Mark-Regular", size: 15))
                }

            }
            .padding(.horizontal, 10)
            .padding(.top, 14)
            
            TabView {
                ForEach(dataHomeStore) { item in
                    HotSalesView(title: item.title, subtitle: item.subtitle, isNew: item.isNew ?? false, imageName: item.picture)
                }
            }
            .frame(width: 378, height: 182)
            .tabViewStyle(.page)
            .padding(.top, -16)
            
            HStack {
                Text("Best Seller")
                    .font(.custom("Mark-Bold", size: 25))
                    .foregroundColor(Color("violet"))
                Spacer()
                Button {

                } label: {
                    Text("see more")
                        .foregroundColor(Color("orange"))
                        .font(.custom("Mark-Regular", size: 15))
                }

            }
            .padding(.top, -4)
            .padding(.horizontal, 10)
            LazyVGrid(columns: columns) {
                ForEach(dataBestSeller) { item in
                    Button {
                        showProduct.toggle()
                    } label: {
                        BestSellerView(title: item.title, imageName: item.picture, price: item.priceWithoutDiscount, oldPrice: item.discountPrice, isLike: item.isFavorites)
                    }
                }
            }
            .padding(.top, -4)
            .padding(.bottom, 20)
        }
    }
}

struct MainBottomPlace_Previews: PreviewProvider {
    static var previews: some View {
        MainBottomPlace(dataHomeStore: MainViewModel().homeStore, dataBestSeller: MainViewModel().bestSeller, showMain: .constant(true), showProduct: .constant(false))
    }
}
