//
//  DishRow.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct DishRow: View {
    let name: String
    let cal: String
    let icon: String
    
    var body: some View {
        HStack {
            Text(icon).font(.largeTitle)
            VStack(alignment: .leading) {
                Text(name).font(.body).bold()
                Text(cal).font(.subheadline).foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "plus.circle.fill").foregroundColor(.orange)
        }
        .padding()
        .background(Color(.white))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
    }
}
