//
//  CircleView.swift
//  TL
//
//  Created by Alexander on 02.03.2024.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(lineWidth: 8)).foregroundStyle(.white)
            .padding(.bottom, 15)
    }
}

#Preview {
    CircleView(color: .red, opacity: 0.1)
}
