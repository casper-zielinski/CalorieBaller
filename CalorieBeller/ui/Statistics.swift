//
//  Statistics.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct Statistics: View {
    let day: Day

    private var calorieProgress: CGFloat { min(CGFloat(day.totalCalories / calorieGoal), 1.0) }
    private var proteinProgress: CGFloat  { min(CGFloat(day.totalProtein  / proteinGoal),  1.0) }
    private var carbsProgress: CGFloat    { min(CGFloat(day.totalCarbs    / carbsGoal),    1.0) }
    private var fatProgress: CGFloat      { min(CGFloat(day.totalFat      / fatGoal),      1.0) }

    var body: some View {
        HStack(spacing: 30) {

            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.2), lineWidth: 12)
                Circle()
                    .trim(from: 0, to: calorieProgress)
                    .stroke(Color.orange, style: StrokeStyle(lineWidth: 12, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeInOut(duration: 0.4), value: calorieProgress)

                VStack {
                    Text("\(Int(day.totalCalories))")
                        .font(.title2).bold()
                    Text("kcal")
                        .font(.caption).foregroundColor(.gray)
                }
            }
            .frame(width: 120, height: 120)

            VStack(alignment: .leading, spacing: 12) {
                MacroBar(label: "Protein", value: proteinProgress, color: .blue)
                MacroBar(label: "Carbs",   value: carbsProgress,   color: .green)
                MacroBar(label: "Fats",    value: fatProgress,     color: .red)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(20)
        .padding(.horizontal)
    }
}



