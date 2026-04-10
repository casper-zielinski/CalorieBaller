//
//  DishList.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct DishList: View {
    let day: Day

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(day.label)'s Dishes")
                .font(.headline)
                .padding(.horizontal)

            VStack(spacing: 15) {
                ForEach(day.dishes, id: \.name) { dish in
                    DishRow(name: dish.name, cal: "\(Int(dish.calories)) kcal", icon: dish.icon)
                }
            }
            .padding(.horizontal)
        }
    }
}
