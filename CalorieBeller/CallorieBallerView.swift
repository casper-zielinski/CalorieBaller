import SwiftUI

struct CalorieBallerView: View {
    @State private var selectedDay = "Mi"

    private var currentDay: Day {
        weekDays[selectedDay] ?? weekDays["Mi"]!
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                Header()
                CalendarStrip(selectedDay: $selectedDay)
                Statistics(day: currentDay)
                DishList(day: currentDay)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    CalorieBallerView()
}
