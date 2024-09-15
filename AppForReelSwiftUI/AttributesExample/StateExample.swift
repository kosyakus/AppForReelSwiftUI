//
//  StateExample.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.09.2024.
//

import SwiftUI

struct StateExample: View {
    @State private var isOn = false
    
    var stateIsOn = "Включено"
    var stateIsOff = "Выключено"

        var body: some View {
            Toggle("State toggle", isOn: $isOn)
                .padding(.trailing, 50)
                .padding(.leading, 50)
                .padding(.bottom, 30)
                .font(.largeTitle)
            HStack {
                Text("Состояние:")
                    .font(.title)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                Text(isOn ? stateIsOn : stateIsOff)
                    .font(.title)
                    .foregroundColor(isOn ? .green : .cyan)
            }
            
        }
}

#Preview {
    StateExample()
}
