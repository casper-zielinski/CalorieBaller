//
//  Calendar.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct Calendar : View {
    let days = ["Mo", "Di", "Mi", "Do", "Fr", "Sa", "So"]
    @State private var selectedDay = "Mi"
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(days, id: \.self) { day in
                VStack(spacing: 8) {
                    Text(day)
                        .font(.caption).bold()
                        .foregroundColor(selectedDay == day ? .white : .black)
                    Circle()
                        .fill(selectedDay == day ? Color.orange : Color.clear)
                        .frame(width: 8, height: 8)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(selectedDay == day ? Color.gray.opacity(0.5) : Color.clear)
                .cornerRadius(12)
                .onTapGesture { selectedDay = day }
            }
        }
        .padding(.horizontal)
    }
}
