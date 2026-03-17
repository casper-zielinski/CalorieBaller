//
//  MacroBar.swift
//  CalorieBeller
//
//  Created by Zielinski Casper on 17.03.26.
//

import SwiftUI

struct MacroBar: View {
    let label: String
    let value: CGFloat
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(label).font(.caption2).bold()
            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Capsule().fill(color.opacity(0.2))
                    Capsule().fill(color)
                        .frame(width: geo.size.width * value)
                }
            }
            .frame(height: 6)
        }
    }
}
