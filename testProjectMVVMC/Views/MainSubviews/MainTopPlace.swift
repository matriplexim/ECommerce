//
//  TopPlace.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 11.12.2022.
//

import SwiftUI

struct MainTopPlace: View {
    @State var tabIndex = 0
    @State var showView = false
    @Binding var showProduct: Bool
    @Binding var showMain: Bool
    let dataHomeStore: [HomeStore]
    let dataBestSeller: [BestSeller]
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer(minLength: 100)
                    Image("place")
                        .foregroundColor(Color("orange"))
                    Text("Zihuatonejo, Gro")
                        .font(.custom("Mark-Medium", size: 15))
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 10, height: 5)
                        .foregroundColor(.secondary)
                    Spacer()
                    Button("\(Image("filter"))") {
                        showView.toggle()
                    }
                    .frame(width: 20, height: 20)
                    .foregroundColor(.primary)
                }
                .padding(.horizontal, 23)
                HStack(alignment: .center) {
                    Text("Select Category")
                        .font(.custom("Mark-Bold", size: 25))
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Text("view all")
                            .font(.custom("Mark-Regular", size: 15))
                    })
                    .foregroundColor(Color("orange"))
                }
                .padding(.horizontal, 23)
                CategoryTapBar(tabIndex: $tabIndex)
                switch tabIndex {
                case 0:
                    MainBottomPlace(dataHomeStore: dataHomeStore, dataBestSeller: dataBestSeller, showMain: $showMain, showProduct: $showProduct)
                case 1:
                    ComputerView()
                case 2:
                    HealthView()
                case 3:
                    BooksView()
                case 4:
                    SomethingView()
                default:
                    NotFoundCategory()
                }
                Spacer()
                BottomBar()
                    .padding(.bottom, 25)
            }
            .ignoresSafeArea(edges: .bottom)
            if showView {
                VStack {
                    Spacer()
                    MainFilter(ifShow: $showView)
                }.ignoresSafeArea()
            }
        }
    }
}

struct MainTopPlace_Previews: PreviewProvider {
    static var previews: some View {
        MainTopPlace(tabIndex: 0, showView: false, showProduct: .constant(false), showMain: .constant(true), dataHomeStore: MainViewModel().homeStore, dataBestSeller: MainViewModel().bestSeller)
    }
}
