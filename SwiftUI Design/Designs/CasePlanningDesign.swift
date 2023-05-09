//
//  CasePlanningDesign.swift
//  SwiftUI Design
//
//  Created by Doğukan Çatmakaş on 9.05.2023.
//

import SwiftUI

struct CasePlanningDesign: View {
    var body: some View {
        
        ScrollView {
            VStack {
                GreetingsView()
                
                DateView()
                
                DateCapsuleScrollView()
                
                PlansAndTasks()
                
                PlansForToday()
                
                VStack {
                    
                    PlanView()
                    
                    PlanView()
                    
                    PlanView()
                    
                    PlanView()
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct CasePlanningDesign_Previews: PreviewProvider {
    static var previews: some View {
        CasePlanningDesign()
    }
}

struct GreetingsView: View {
    var body: some View {
        HStack {
            Image("Dogukan")
                .resizable()
                .scaledToFit()
                .frame(width: 45, height: 45)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.cyan, lineWidth: 3)
                )
                .padding()
            
            Text("Hello, Doğukan")
                .fontWeight(.light)
                .font(.title2)
            
            Spacer()
            
            Image(systemName: "gearshape")
                .padding()
        }
        .padding(.horizontal)
    }
}

struct DateView: View {
    var body: some View {
        HStack {
            Text("May, 2023")
                .bold()
                .padding()
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct DateCapsule: View {
    var day: Int
    var dayName: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 60, height: 100)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color(.gray)))
                .foregroundColor(.white)
            
            VStack {
                Text("\(day)")
                    .bold()
                
                Text(dayName)
                    .bold()
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal, 1)
    }
}

struct DateCapsuleScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
                DateCapsule(day: 24, dayName: "Wed")
            }
            .padding(.horizontal)
            .padding(.vertical)
        }
        .scrollIndicators(.hidden)
    }
}

struct PlansAndTasks: View {
    var body: some View {
        HStack {
            Button {
                print("Plans Clicked")
            } label: {
                Text("Plans")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30)
            
            Rectangle()
                .frame(width: 0.5, height: 30)
                .foregroundColor(.gray)
            
            Button {
                print("Tasks Clicked")
            } label: {
                Text("Tasks")
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
            .padding(.horizontal, 30)
        }
        .frame(width: .infinity)
        .padding()
        .background(Color("TextFieldColor"))
        .cornerRadius(20)
    }
}

struct PlansForToday: View {
    var body: some View {
        HStack {
            Text("Plans For Today")
                .font(.title2)
                .bold()
                .padding()
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct PlanView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .fill(.cyan)
                    .cornerRadius(20)
                    .frame(width: .infinity, height: 110)
                    .padding(.horizontal)
                
                VStack {
                    HStack {
                        Text("Gym + swimming pool")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.horizontal, 40)
                    
                    Rectangle()
                        .frame(width: .infinity, height: 0.5)
                        .foregroundColor(Color("TextFieldColor"))
                        .padding(.horizontal, 40)
                    
                    HStack {
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                        
                        Text("9 AM - 11 AM")
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(.horizontal, 40)
                }
            }
        }
    }
}
