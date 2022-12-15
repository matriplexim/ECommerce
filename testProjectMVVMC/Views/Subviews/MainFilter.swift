//
//  MainFilter.swift
//  testProjectMVVMC
//
//  Created by Максим Ломакин on 12.12.2022.
//

import SwiftUI

struct MainFilter: View {
    
    @Binding var ifShow: Bool
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: 375)
                    .foregroundColor(Color("filter"))
                    .shadow(radius: 10)
                VStack(alignment: .leading) {
                    HStack {
                        Button("X") {
                            ifShow.toggle()
                        }
                        Spacer(minLength: 135)
                        Text("Filter options")
                        Spacer()
                        Button("Done") {
                            
                        }
                    }
                    Text("Brand")
                    Button("Samsung") {
                        
                    }
                    Text("Price")
                    Button("1000$") {
                        
                    }
                    Text("Size")
                    Button("25%") {
                        
                    }
                }
                
            }
            .frame(height: 375)
        }
    }
}

struct MainFilter_Previews: PreviewProvider {
    static var previews: some View {
        MainFilter(ifShow: .constant(false))
    }
}
