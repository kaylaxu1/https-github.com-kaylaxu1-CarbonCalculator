//
//  ElectricBillView.swift
//  CarbonCalculator
//
//  Created by Kayla Xu on 4/1/23.
//

import Foundation
import SwiftUI
struct ElectricBill: View {
    @Binding var electric: String
    @Binding var gas: String
    @Binding var oil: String
    @Binding var answer: Double
    @State var showView = false
    
    @Binding var mileage: String
    @Binding var flightsUnder4: String
    @Binding var flightsOver4: String
    
    
    var body: some View{
            ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(.displayP3, red: 185/255, green: 219/255, blue: 147/255), Color(.systemBackground)]), startPoint: .bottom, endPoint: .top)
                    .blur(radius: 2)
                    .opacity(1)
                Text("Energy Consumption")
                    .offset(x: 0, y: -370)
                    .font(.largeTitle.weight(.black))
                VStack {
                    Image("electric")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(0.8, anchor: .center)
                    .offset(x: 0, y: -200)
                    //.clipped()
                }
                VStack{
                    HStack {
                        Text("Monthly Gas Bill:")
                            .foregroundColor(.primary)
                            .clipped()
                            .padding(10)
                            .font(.title)
                            TextField("Amount:", text: $gas)
                            .font(.title)
                            .foregroundColor(.secondary)
                            .clipped()
                            .padding(10)
                }
                .offset(x: 0, y: 92)
                    HStack {
                        Text("Monthly Oil Bill:")
                            .font(.title)
                            .foregroundColor(.primary)
                            .padding(10)
                            .clipped()
                        TextField("Amount", text: $oil)
                            .foregroundColor(.secondary)
                            .font(.title)
                            .padding(10)
                            .clipped()
                    }
                .offset(x: 0, y: 130)
                    HStack {
                        Text("Monthly Electric Bill:")
                            .font(.title)
                            .foregroundColor(.primary)
                            .clipped()
                            .padding(10)
                        TextField("Amount", text: $electric)
                            .font(.title)
                            .foregroundColor(.secondary)
                            .clipped()
                            .padding(10)
                            .offset(x: 0, y: 0)
                    }
                    .offset(x: 0, y: 160)
                
                    Button(action: {
                        self.showView = true
                        let e = Int(electric)! * 105
                        let g = Int(gas)! * 105
                        let o = Int(oil)! * 113
                        answer += Double(e+g+o)

                        }){
                        Text("Next")
                            .font(.title)
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity)
                            .clipped()
                            .padding()
                            .background(CustomColor.greenColor)
                            .offset(x: 60, y: -15)
                        }
                    .offset(x: 40, y: -460)
                
                
                NavigationLink(destination: Travel(mileage: $mileage, flightsUnder4: $flightsUnder4, flightsOver4: $flightsOver4, answer: $answer), isActive: $showView) {
                        EmptyView()
                        .navigationBarBackButtonHidden(true)
                    }
                }
            }  //end of ZStack
            .offset(x:0, y:0)
            .font(.title.weight(.black))
            
        
                
    }
}




            
            
            
                
                
         

