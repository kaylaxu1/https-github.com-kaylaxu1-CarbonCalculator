//
//  Travel.swift
//  CarbonCalculator
//
//  Created by Kayla Xu on 4/1/23.
//

import Foundation
import SwiftUI

struct Travel: View {
    @Binding var mileage: String
    @Binding var flightsUnder4: String
    @Binding var flightsOver4: String
    @Binding var answer: Double
    @State var showView = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, Color(.displayP3, red: 185/255, green: 219/255, blue: 147/255)]), startPoint: .top, endPoint: .bottom)
                .foregroundColor(.primary)
                .font(.largeTitle)
            Text("Travel")
                .font(.largeTitle.weight(.black))
                .offset(x: 0, y: -370)
            VStack {
                Image("travel")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.6, anchor: .center)
                    .offset(x: 0, y: -200)
            }
            VStack {
                HStack {
                    Text("Total Yearly Car Milage:")
                        .clipped()
                        .padding(10)
                        .font(.body)
                    TextField("Amount", text: $mileage)
                        .clipped()
                        .font(.title)
                        .padding(10)
                        .foregroundColor(.secondary)
                }
                .offset(x: 0, y: 132)
                HStack {
                    Text("Number of flights four hours or less:")
                        .clipped()
                        .padding(10)
                        .font(.body)
                    TextField("Amount", text: $flightsUnder4)
                        .clipped()
                        .padding(10)
                        .font(.title)
                        .foregroundColor(.secondary)
                }
                .offset(x: 0, y: 140)
                HStack {
                    Text("Number of flights four hours or more:")
                        .clipped()
                        .padding(10)
                        .font(.body)
                    TextField("Amount", text: $flightsOver4)
                        .clipped()
                        .padding(10)
                        .font(.title)
                        .foregroundColor(.secondary)
                }
                .offset(x: 0, y: 160)
                
                Button(action: {
                    self.showView = true
                    let x = Double(mileage)! * 0.79
                    let y = Int(flightsUnder4)! * 1100
                    let z = Int(flightsOver4)! * 4400
                    answer += x+Double(y+z)
                    }){
                    Text("Continue")
                    .font(.title)
                    .foregroundColor(.primary)
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .padding()
                    .background(CustomColor.greenColor)
                    
                }
            .offset(x: 0, y: -150)
                
                NavigationLink(destination: Recycle(answer: $answer), isActive: $showView) {
                        EmptyView()
                            .navigationBarBackButtonHidden(true)
                }
                
            }
        }
        .offset(x:0, y:0)
        .font(.title.weight(.black))
        
        
            
    }
}






