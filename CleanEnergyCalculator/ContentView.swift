//
//  ContentView.swift
//  CarbonCalculator
//
//  Created by Kayla Xu on 4/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var electric: String = ""
    @State private var oil: String = ""
    @State private var gas: String = ""
    @State private var answer: Double = 0.0
    @State private var mileage: String = ""
    @State private var flightsUnder4: String = ""
    @State private var flightsOver4: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                Image("IMG_0253")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text("Discover Your Carbon Footprint")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .offset(x: 0, y: -371)
                    .frame(width: 400)
                    .foregroundColor(.blue)
                    .font(.title)
                    
                NavigationLink(destination: ElectricBill(electric: $electric, gas: $gas, oil: $oil, answer: $answer, mileage: $mileage, flightsUnder4: $flightsUnder4, flightsOver4: $flightsOver4))
                        {
                            Text("Continue")
                                .font(.largeTitle)
                                    .font(.callout)
                                    .padding()
                                    .frame(maxWidth:.infinity)
                                    .clipped()
                    
                                    .foregroundColor(Color.blue)
                                    .background(Color.white)
                                    
                                        
                                    .padding(60)
                                    .offset(x: 0, y: 100)
                                    .scaleEffect(0.8, anchor: .center)
                        }
            
                            
                    }
                    
            }
                
    
        }
       
        
    }


struct CustomColor {
    static let greenColor = Color("LightGreen")
    static let blueColor = Color("Blue")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
