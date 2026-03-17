import SwiftUI

struct CalorieBallerView: View {

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 25) {
                Header()
                Calendar()
                Statistics()
                DishList()
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    CalorieBallerView()
}
