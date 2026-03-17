//
//  DishList.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct DishList : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Today's Dishes")
                .font(.headline)
                .padding(.horizontal)
            
            VStack(spacing: 15) {
                DishRow(name: "Oatmeal mit Beeren", cal: "450 kcal", icon: "🥣")
                DishRow(name: "Hähnchen mit Reis", cal: "680 kcal", icon: "🍗")
                DishRow(name: "Protein Shake", cal: "220 kcal", icon: "🥤")
            }
            .padding(.horizontal)
        }
    }
}
