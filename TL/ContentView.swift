//
//  ContentView.swift
//  TL
//
//  Created by Alexander on 02.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var nextButtonText = "CLICK"
    @State private var activeColor: CurrentLight?
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                CircleView(color: .red, opacity: activeColor == .red ? 1 : 0.1)
                CircleView(color: .yellow, opacity: activeColor == .yellow ? 1 : 0.1)
                CircleView(color: .green, opacity: activeColor == .green ? 1 : 0.1)
                
                Spacer()
                
                Button(action: nextButtonDidTapped) {
                    ZStack {
                        Capsule()
                            .frame(width: 100, height: 100)
                        Text(nextButtonText)
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                    }
                }
            }.padding()
        }
    }
    
    private func nextButtonDidTapped() {
        if (activeColor == nil) {
            nextButtonText = "NEXT"
        }
        switch activeColor {
        case .red:
            activeColor = .yellow
        case .yellow:
            activeColor = .green
        default:
            activeColor = .red
        }
    }
    
    private enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
