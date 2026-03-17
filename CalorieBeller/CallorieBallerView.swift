import SwiftUI

struct CalorieBallerView: View {
    let days = ["Mo", "Di", "Mi", "Do", "Fr", "Sa", "So"]
    @State private var selectedDay = "Mi"
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                // 1. Header
                Text("CalorieBaller")
                    .font(.system(size: 34, weight: .black, design: .rounded))
                    .padding(.horizontal)

                // 2. Wochen Kalender (100% Breite)
                HStack(alignment: .center) {
                    ForEach(days, id: \.self) { day in
                        VStack(spacing: 8) {
                            Text(day)
                                .font(.caption).bold()
                                .foregroundColor(selectedDay == day ? .white : .gray)
                            Circle()
                                .fill(selectedDay == day ? Color.orange : Color.clear)
                                .frame(width: 8, height: 8)
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(selectedDay == day ? Color.black : Color.clear)
                        .cornerRadius(12)
                        .onTapGesture { selectedDay = day }
                    }
                }
                .padding(.horizontal)

                // 3. Statistics Section
                HStack(spacing: 30) {
                    // Kreis-Balken (Kalorien)
                    ZStack {
                        Circle()
                            .stroke(Color.gray.opacity(0.2), lineWidth: 12)
                        Circle()
                            .trim(from: 0, to: 0.7) // Beispielwert 70%
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

                // 4. Dishes List
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
            .padding(.vertical)
        }
    }
}
