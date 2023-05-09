//
//  BeautyAppDesign.swift
//  SwiftUI Design
//
//  Created by Doğukan Çatmakaş on 9.05.2023.
//

import SwiftUI

struct BeautyAppDesign: View {
    var body: some View {
        
        ScrollView {
            VStack {
                NavigationBarView()
                
                CampaignView()
                
                PopularProductText()
                
                PopularProductsScroll()
                
                RecommentedText(name: "Nivea", price: 300.00)

            }
        }
    }
}

struct BeautyAppDesign_Previews: PreviewProvider {
    static var previews: some View {
        BeautyAppDesign()
    }
}

struct NotificationsButton: View {
    var body: some View {
        ZStack {
            Rectangle().fill(Color("TextFieldColor"))
                .frame(width: 50, height: 50)
                .cornerRadius(10)
            
            Image("Bell")
                .resizable()
                .frame(width: 20, height: 20)
        }
        .padding()
    }
}

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Image("Dogukan")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.black, lineWidth: 3)
                )
                .padding()
            
            Text("Hello, Doğukan")
                .fontWeight(.medium)
                .padding(.vertical)
            
            Spacer()
            
            NotificationsButton()
        }
    }
}

struct CampaignView: View {
    var body: some View {
        VStack {
            Image("RihannaCampaign")
                .resizable()
                .scaledToFill()
                .cornerRadius(10)
                .padding()
                .frame(width: .infinity, height: 190)
        }
    }
}

struct PopularProductText: View {
    var body: some View {
        HStack {
            Text("Popular Product")
                .fontWeight(.semibold)
                .font(Font.system(size: 20))
            
            Spacer()
            
            Button {
                print("See More Clicked")
            } label: {
                Text("See More")
                    .foregroundColor(.gray)
                    .font(Font.system(size: 15))
            }
        }
        .padding()
    }
}

struct ProductsView: View {
    var name: String
    var oldPrice: Int
    var newPrice: Int
    var image: String
    
    var body: some View {
       
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .frame(width: 300, height: 140)
                .scaledToFill()
                .cornerRadius(16)
            
            VStack(alignment: .leading) {
                Text(name)
                    .fontWeight(.semibold)
                
                HStack {
                    Text("$\(newPrice)")
                        .fontWeight(.semibold)
                    
                    Text("$\(oldPrice)")
                        .fontWeight(.semibold)
                        .padding(.horizontal)
                        .strikethrough()
                        .foregroundColor(.red)
                }
            }
        }
        .frame(width: 300)
        .shadow(color: Color.black.opacity(0.02), radius: 16, x: 16, y: 16)
        .padding(.horizontal)
    }
}

struct PopularProductsScroll: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ProductsView(name: "Biossance Beauty Products", oldPrice: 500, newPrice: 450, image: "kozmetik1")
                ProductsView(name: "Vinanza Beauty Products", oldPrice: 900, newPrice: 600, image: "kozmetik2")
                ProductsView(name: "Fenty Beauty Products", oldPrice: 1200, newPrice: 999, image: "RihannaCampaign")
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct RecommentedText: View {
    var name: String
    var price: Float
    
    var body: some View {
        VStack {
            HStack {
                Text("Recommented")
                    .fontWeight(.semibold)
                    .font(Font.system(size: 20))
                
                Spacer()
                
                Button {
                    print("See More Clicked")
                } label: {
                    Text("See More")
                        .foregroundColor(.gray)
                        .font(Font.system(size: 15))
                }
                
            }
            HStack {
                Image("Nivea")
                    .resizable()
                    .frame(width: 100, height: 120)
                    .scaledToFit()
                    .padding()
                
                VStack(alignment: .leading) {
                    Text(name)
                        .fontWeight(.medium)
                        .padding(.vertical, 2)
                    
                    Text("100% orgamic body oil")
                        .font(.caption2)
                        .foregroundColor(.gray)
                        .padding(.vertical, 2)
                    
                    HStack {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        
                        Text("4.8 (274 Review)")
                            .font(Font.system(size: 15))
                            .foregroundColor(.gray)
                            .padding(.vertical, 3)
                    }
                    
                    Text("$\(price)")
                        .foregroundColor(.orange)
                }
                Spacer()
            }
        }
        .padding()
    }
}
