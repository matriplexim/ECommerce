//
//  HotSales.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 15.12.2022.
//

import SwiftUI

struct HotSalesView: View {
    let title: String
    let subtitle: String
    let isNew: Bool
    let imageName: String
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: imageName)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Color("orange")
            }
            .frame(width: 378, height: 182)
            .cornerRadius(15)
            
            HStack {
                VStack(alignment: .leading) {
                    if isNew {
                        Text("New")
                            .font(.custom("Mark-Bold", size: 10))
                            .foregroundColor(.white)
                            .background(
                                Circle()
                                    .frame(width: 27, height: 27)
                                    .foregroundColor(Color("orange"))
                            )
                            .padding(.top, -20)
                    }
                    Text(title)
                        .font(.custom("Mark-Bold", size: 25))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                        .padding(.top, 3)
                    Text(subtitle)
                        .font(.custom("Mark-Regular", size: 11))
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Button {
                        
                    } label: {
                        Text("Buy now!")
                            .font(.custom("Mark-Bold", size: 11))
                            .padding(.horizontal, 27)
                            .padding(.vertical, 5)
                            .foregroundColor(.black)
                            .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .foregroundColor(.white)
                                    .shadow(radius: 5)
                            )
                            .padding(.top, 15)
                    }

                    
                }
                .padding(.horizontal, 26)
                Spacer()
            }
            .frame(width: 378, height: 182)
        }

    }
}

struct HotSalesView_Previews: PreviewProvider {
    static var previews: some View {
        HotSalesView(title: "Iphone 12", subtitle: "Super Mega Rapido",isNew: true, imageName: "https://img.ibxk.com.br/2020/09/23/23104013057475.jpg?w=1120&h=420&mode=crop&scale=both")
    }
}
