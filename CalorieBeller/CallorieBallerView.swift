import SwiftUI

struct CalorieBallerView: View {
    @AppStorage("selectedDay") private var selectedDay = "Mi"

    private var currentDay: Day {
        weekDays[selectedDay] ?? weekDays["Mi"]!
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                Header()
                CalendarStrip(selectedDay: $selectedDay)
                DailyTip()
                Statistics(day: currentDay)
                DishList(day: currentDay)
            }
            .padding(.vertical)
        }
    }
}

// MARK: - Tipp des Tages

struct DailyTip: View {
    @State private var tip = "Lade Tipp..."

    var body: some View {
        Text("\u{1F4A1} \(tip)")
            .font(.subheadline)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.orange.opacity(0.1))
            .cornerRadius(12)
            .padding(.horizontal)
            .task { await fetchTip() }
    }

    private func fetchTip() async {
        guard let url = URL(string: "https://api.adviceslip.com/advice") else { return }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let result = try JSONDecoder().decode(AdviceResponse.self, from: data)
            tip = result.slip.advice
        } catch {
            tip = "Trinke genug Wasser \u{2013} mindestens 2L am Tag!"
        }
    }
}

private struct AdviceResponse: Decodable {
    let slip: Slip
    struct Slip: Decodable {
        let advice: String
    }
}

#Preview {
    CalorieBallerView()
}
