//
//  ContentView.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 05.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isOn = false

        var body: some View {
            Toggle("Включено", isOn: $isOn)
                .padding(.trailing, 20)
                .padding(.leading, 20)
            
            let _ = print($isOn)
        }
}

#Preview {
    ContentView()
}

