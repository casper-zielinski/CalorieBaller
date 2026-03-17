//
//  Statistics.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct Statistics: View {
    var body: some View {
        HStack(spacing: 30) {

            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 12)
                Circle()
                    .trim(from: 0, to: 0.7)
                    .stroke(Color.orange, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                
                VStack {
                    Text("1.850")
                        .font(.title2).bold()
                    Text("kcal")
                        .font(.caption).foregroundColor(.gray)
                }
            }
            .frame(width: 120, height: 120)

            // Makro-Balken (Horizontal)
            VStack(alignment: .leading, spacing: 12) {
                MacroBar(label: "Protein", value: 0.8, color: .blue)
                MacroBar(label: "Carbs", value: 0.6, color: .green)
                MacroBar(label: "Fats", value: 0.4, color: .red)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}



