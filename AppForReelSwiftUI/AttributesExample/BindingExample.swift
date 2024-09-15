//
//  BindingExample.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.09.2024.
//

import SwiftUI

struct BindingExample: View {
    @State private var isOn = false
    var stateIsOn = "Включено"
    var stateIsOff = "Выключено"
    
    var body: some View {
        VStack {
            Text("Родительское состояние: ")
                .font(.title)
                .padding(.trailing, 20)
                .padding(.leading, 20)
            
            Text(isOn ? stateIsOn : stateIsOff)
                .font(.title)
                .foregroundColor(isOn ? .green : .cyan)
        }
        ChildView(isOn: $isOn)
    }
}

struct ChildView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle("Дочернее состояние", isOn: $isOn)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .font(.title)
    }
}


#Preview {
    BindingExample()
}
