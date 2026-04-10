//
//  DishRow.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct DishRow: View {
    let dish: Dish
    @State private var showDetail = false

    var body: some View {
        HStack {
            Text(dish.icon).font(.largeTitle)
            VStack(alignment: .leading) {
                Text(dish.name).font(.body).bold()
                Text("\(Int(dish.calories)) kcal").font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
            Button {
                UIImpactFeedbackGenerator(style: .light).impactOccurred()
                showDetail = true
            } label: {
                Image(systemName: "info.circle.fill").foregroundColor(.orange)
            }
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
        .sheet(isPresented: $showDetail) {
            DishDetailView(dish: dish)
        }
    }
}

struct DishDetailView: View {
    let dish: Dish

    var body: some View {
        VStack(spacing: 20) {
            Text(dish.icon).font(.system(size: 60))
            Text(dish.name).font(.title2).bold()

            VStack(alignment: .leading, spacing: 12) {
                Label("\(Int(dish.calories)) kcal", systemImage: "flame")
                Label("\(Int(dish.proteinInG))g Protein", systemImage: "p.circle")
                Label("\(Int(dish.carbsInG))g Carbs", systemImage: "c.circle")
                Label("\(Int(dish.fatInG))g Fett", systemImage: "f.circle")
                Label("\(Int(dish.massInG))g Gewicht", systemImage: "scalemass")
            }
            .font(.body)

            Spacer()
        }
        .padding(.top, 40)
    }
}
