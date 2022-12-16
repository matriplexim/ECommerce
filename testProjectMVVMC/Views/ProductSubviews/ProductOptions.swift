//
//  ProductOptions.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 16.12.2022.
//

import SwiftUI

struct ProductOptions: View {
    let cpu: String
    let camera: String
    let ssd: String
    let sd: String
    let title: String
    let rating: Double
    let color: [String]
    let capacity: [String]
    let selected = [true, false]
    let price: Int
    @State var selectedFirstColor = true
    @State var selectedSecondColor = false
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .ignoresSafeArea(edges: .bottom)
                .foregroundColor(Color("filter"))
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                HStack {
                    Text(title)
                        .font(.custom("Mark-Medium", size: 24))
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("heartProduct")
                            .foregroundColor(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .frame(width: 37, height: 33)
                                    .foregroundColor(Color("violet"))
                            )
                    }

                }
                .padding(.top, 12)
                .padding(.horizontal, 37)
                
                HStack(spacing: 8) {
                    RatingOptions(rating: rating)
                }
                .padding(.horizontal, 37)
                .padding(.top, -10)
                
                HStack(alignment: .top) {
                    VStack(alignment: .center, spacing: 8) {
                        Text("Shop")
                            .font(.custom("Mark-Bold", size: 20))
                        Rectangle()
                            .frame(width: 86, height: 3)
                            .foregroundColor(Color("orange"))
                    }
                    Spacer()
                    Text("Details")
                        .font(.custom("Mark-Regular", size: 20))
                    Spacer()
                    Text("Features")
                        .font(.custom("Mark-Regular", size: 20))
                }
                .padding(.leading, 27)
                .padding(.trailing, 40)
                .padding(.top, 10)
                
                HStack(alignment: .center) {
                    VStack(alignment: .center) {
                        Image("cpu")
                        Text(cpu)
                            .font(.custom("Mark-Regular", size: 11))
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        Image("camera")
                        Text(camera)
                            .font(.custom("Mark-Regular", size: 11))
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        Image("ssd")
                        Text(ssd)
                            .font(.custom("Mark-Regular", size: 11))
                    }
                    Spacer()
                    VStack(alignment: .center) {
                        Image("sd")
                        Text(sd)
                            .font(.custom("Mark-Regular", size: 11))
                    }
                }
                .foregroundColor(.secondary)
                .padding(.leading, 40)
                .padding(.trailing, 40)
                .padding(.top, 6)
                
                Text("Select color and capacity")
                    .font(.custom("Mark-Medium", size: 16))
                    .padding(.top, 10)
                    .padding(.leading, 30)
                HStack(spacing: 18) {
                    ForEach(color.indices) { index in
                        if selected[index] {
                            Image(systemName: "checkmark")
                                .foregroundColor(.white)
                                .background(
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color(uiColor: UIColor(hex: color[index])))
                                )
                        } else {
                            Circle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color(uiColor: UIColor(hex: color[index])))
                        }
                    }
                    Spacer()
                    HStack(spacing: 35) {
                        ForEach(capacity.indices) { index in
                            if selected[index] {
                                Text("\(capacity[index]) GB")
                                    .font(.custom("Mark-Bold", size: 13))
                                    .foregroundColor(.white)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .frame(width: 71, height: 30)
                                            .foregroundColor(Color("orange"))
                                    )
                            } else {
                                Text("\(capacity[index]) gb")
                                    .font(.custom("Mark-Bold", size: 13))
                                    .foregroundColor(.secondary)
                            }
                        }
                    }
                }
                .padding(.leading, 34)
                .padding(.trailing, 60)
                Button {
                    
                } label: {
                    HStack(spacing: 61) {
                        Text("Add to Cart")
                        Text("$\(price).00")
                    }
                    .font(.custom("Mark-Bold", size: 20))
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 355, height: 54)
                            .foregroundColor(Color("orange"))
                    )
                }
                .padding(.leading, 55)
                .padding(.top, 20)

                Spacer()
            }
        }
    }
}

struct ProductOptions_Previews: PreviewProvider {
    static var previews: some View {
        ProductOptions(cpu: "Exynos 990", camera: "108 + 12 mp", ssd: "8 GB", sd: "256 GB", title: "Galaxy Note 20 Ultra", rating: 4.5, color: ["#772D03","#010035"], capacity: ["126","252"], price: 1500)
    }
}
