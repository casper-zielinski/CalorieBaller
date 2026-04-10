//
//  Calendar.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct CalendarStrip: View {
    let days = ["Mo", "Di", "Mi", "Do", "Fr", "Sa", "So"]
    @Binding var selectedDay: String

    var body: some View {
        HStack(alignment: .center) {
            ForEach(days, id: \.self) { day in
                VStack(spacing: 8) {
                    Text(day)
                        .font(.caption).bold()
                        .foregroundColor(selectedDay == day ? .white : .primary)
                    Circle()
                        .fill(selectedDay == day ? Color.orange : Color.clear)
                        .frame(width: 8, height: 8)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 10)
                .background(selectedDay == day ? Color.gray.opacity(0.5) : Color.clear)
                .cornerRadius(12)
                .onTapGesture {
                    UIImpactFeedbackGenerator(style: .light).impactOccurred()
                    selectedDay = day
                }
            }
        }
        .padding(.horizontal)
        .gesture(
            DragGesture(minimumDistance: 30, coordinateSpace: .local)
                .onEnded { value in
                    guard let index = days.firstIndex(of: selectedDay) else { return }
                    if value.translation.width < -30, index < days.count - 1 {
                        selectedDay = days[index + 1]
                        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                    } else if value.translation.width > 30, index > 0 {
                        selectedDay = days[index - 1]
                        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                    }
                }
        )
    }
}
