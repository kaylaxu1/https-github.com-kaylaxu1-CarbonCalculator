//
//  QuestionView.swift
//  CarbonCalculator
//
//  Created by Kayla Xu on 4/1/23.
//

import Foundation
import SwiftUI
    

struct Results: View {
    @Binding var answer: Double
    
    var body: some View {
        ZStack {
            Image("results")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Text("Your carbon footprint is \(answer) tons per year")
                .font(.largeTitle)
                .foregroundColor(.white)
                .frame(width: 290, height: 250)
                .clipped()
                .background(CustomColor.greenColor)
            Text("Results")
                .font(.largeTitle)
                .foregroundColor(.primary)
                .offset(x: 0, y: -380)
        }
    }
}


