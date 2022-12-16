//
//  MainFilter.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 12.12.2022.
//

import SwiftUI

struct MainFilter: View {
    
    @Binding var ifShow: Bool
    @StateObject var viewModel = FilterViewModel()
    @State var showBrands = false
    @State var selectedBrand = "Samsung"
    @State var startPrice = 300
    @State var endPrice = 500
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(height: 375)
                .foregroundColor(Color("filter"))
                .shadow(radius: 8)
            VStack(alignment: .leading) {
                HStack(alignment: .center) {
                    Button {
                        ifShow.toggle()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 37, height: 37)
                                    .foregroundColor(Color("violet"))
                            )
                    }
                    Spacer()
                    
                    Text("Filter options")
                        .font(.custom("Mark-Medium", size: 18))
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Done")
                            .foregroundColor(.white)
                            .font(.custom("Mark-Medium", size: 18))
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 86, height: 36)
                                    .foregroundColor(Color("orange"))
                            )
                    }
                }
                .padding(.top, 31)
                .padding(.leading, 44)
                .padding(.trailing, 40)
                Text("Brand")
                    .font(.custom("Mark-Medium", size: 18))
                    .padding(.top, 60)
                    .padding(.leading, 34)
                Menu {
                    ForEach(viewModel.brands.indices) { index in
                        Button {
                            self.selectedBrand = viewModel.brands[index]
                        } label: {
                            Text(viewModel.brands[index])
                        }

                    }
                } label: {
                    HStack(spacing: 200) {
                        Text(selectedBrand)
                            .font(.custom("Mark-Regular", size: 18))
                            .foregroundColor(.primary)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.secondary)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray)
                            .frame(width: 337, height: 37)
                        
                    )
                }
                .padding(.leading, 46)
                Text("Price")
                    .font(.custom("Mark-Medium", size: 18))
                    .padding(.top, 10)
                    .padding(.leading, 34)
                Menu {
                    Button("Start price +") {
                        if startPrice < endPrice {
                            startPrice += 100
                        }
                    }
                    Button("Start price -") {
                        if startPrice >= 100 {
                            startPrice -= 100
                        }
                    }
                    Button("End price +") {
                        if endPrice <= 9900 {
                            endPrice += 100
                        }
                    }
                    Button("End price -") {
                        if endPrice > startPrice {
                            endPrice -= 100
                        }
                    }
                } label: {
                    HStack(spacing: 200) {
                        Text("$\(startPrice)-$\(endPrice)")
                            .font(.custom("Mark-Regular", size: 18))
                            .foregroundColor(.primary)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.secondary)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray)
                            .frame(width: 337, height: 37)
                        
                    )
                }
                .padding(.leading, 38)
                Text("Size")
                    .font(.custom("Mark-Medium", size: 18))
                    .padding(.top, 10)
                    .padding(.leading, 34)
                Menu {
                    
                } label: {
                    HStack(spacing: 150) {
                        Text("4.5 to 5.5 inches")
                            .font(.custom("Mark-Regular", size: 18))
                            .foregroundColor(.primary)
                        Image(systemName: "chevron.down")
                            .foregroundColor(.secondary)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray)
                            .frame(width: 337, height: 37)
                        
                    )
                }
                .padding(.leading, 40)
                Spacer()
            }//vstack
        }
        .frame(height: 375)
    }
}

struct MainFilter_Previews: PreviewProvider {
    static var previews: some View {
        MainFilter(ifShow: .constant(false))
    }
}
