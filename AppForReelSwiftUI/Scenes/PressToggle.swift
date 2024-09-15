//
//  PressToggle.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 16.08.2024.
//

import SwiftUI

struct PressToggle: View {
    @State private var text: String = "Hi, it is new tutorial"
    @State private var isPressed: Bool = false
    
    var body: some View {
        VStack {
            Text(text)
                .padding()
            
            Button(action: {
                text = isPressed ? "Button unpressed" : "Button pressed"
                isPressed.toggle()
            }) {
                Text(isPressed ? "Button is pressed" : "Press the button")
                    .padding()
                    .background(isPressed ? Color.green : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    PressToggle()
}
