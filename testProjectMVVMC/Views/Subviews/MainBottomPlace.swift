//
//  MainBottomPlace.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct MainBottomPlace: View {
    
    @StateObject var vm = MainViewModel()
    let dataHomeStore: [HomeStore]
    let dataBestSeller: [BestSeller]
    let columns: [GridItem] = [
        GridItem(.fixed(178), spacing: nil, alignment: nil),
        GridItem(.fixed(178), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            SearchButton()
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
            
            TabView {
                ForEach(vm.homeStore) { item in
                    HotSalesView(title: item.title, subtitle: item.subtitle, isNew: item.isNew ?? false, imageName: item.picture)
                }
            }
            .frame(width: 378, height: 182)
            .tabViewStyle(.page)
            
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
            LazyVGrid(columns: columns) {
                ForEach(vm.bestSeller) { item in
                    Text(item.title)
                }
            }
        }
    }
}

struct MainBottomPlace_Previews: PreviewProvider {
    static var previews: some View {
        MainBottomPlace(dataHomeStore: MainViewModel().homeStore, dataBestSeller: MainViewModel().bestSeller)
    }
}
