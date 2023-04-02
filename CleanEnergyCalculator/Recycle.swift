//
//  Recycle.swift
//  CarbonCalculator
//
//  Created by Kayla Xu on 4/1/23.
//

import Foundation
import SwiftUI
struct Recycle: View {
    @Binding var answer: Double

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.white, Color(.displayP3, red: 185/255, green: 219/255, blue: 147/255)]), startPoint: .top, endPoint: .bottom)
            Text("Recycle")
                .font(.largeTitle)
                .offset(x: 0, y: -380)
            VStack {
                Image("recycle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipped()
                    .scaleEffect(0.8, anchor: .center)
                    .offset(x: 0, y: -200)
            }
            VStack {
                HStack {
                    Text("Do you recycle newspaper?")
                        .clipped()
                        .padding(10)
                        .font(.headline)
                   
                    Button(action: {   //if you click true for news
                        
                    }){
                        Text("Yes")
                            .clipped()
                            .padding()
                            .font(.body)
                            .background(CustomColor.greenColor)
                    }
                    
                    Button(action: {   // check no for news
                        answer = answer + 184
                    }){
                        Text("No")
                            .clipped()
                            .padding()
                            .font(.body)
                            .background(CustomColor.blueColor)
                    }
                }
                .offset(x: 0, y: 70)
                HStack {
                    
                    Text("Do you recycle aluminum?")
                        .clipped()
                        .padding(10)
                        .font(.headline)
                    
                        
                    Button(action: {   //if you click yes for alum
                        
                    })
                        {
                            Text("Yes")
                                .clipped()
                                .padding()
                                .font(.body)
                                .background(CustomColor.greenColor)
                        }
            
                
                    
                    Button(action: {   //if you click no for alum
                        answer += 166
                    }) {
                        Text("No")
                            .clipped()
                            .padding()
                            .font(.body)
                            .background(CustomColor.blueColor)
                    }
                }
                .offset(x: 0, y: 80)
            
                
                NavigationLink(destination: Results(answer: $answer)) {   //replace next question with FinalView
                    Text("Calculate!")
                        .font(.title)
                        .foregroundColor(.primary)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .padding()
                        .background(CustomColor.greenColor)
                        .offset(x: 0, y: 68)
                            .navigationBarBackButtonHidden(true)
                    }
              .offset(x: 0, y: 67)
            }
            
                
}  //ZStack
        .font(.body)
        .offset(x: 0, y: 0)
        .clipped()

            }
        
    }




