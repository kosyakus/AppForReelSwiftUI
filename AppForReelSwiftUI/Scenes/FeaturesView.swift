//
//  FeaturesView.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 11.08.2024.
//

import SwiftUI

struct FeaturesView: View {
    @State private var scale: CGFloat = 1.0
    @State private var color: Color = .blue
    
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .fill(color)
                .frame(width: 100, height: 100)
                .scaleEffect(scale)
            
            Spacer()
            
            Button(action: {
                let animator = UIViewPropertyAnimator(duration: 1, curve: .easeInOut) {
                    scale += 0.5
                    color = color == .blue ? .red : .blue
                }
                animator.startAnimation()
            }) {
                Text("Animate")
                    .padding()
                    .cornerRadius(10)
            }
            .padding()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    FeaturesView()
}
