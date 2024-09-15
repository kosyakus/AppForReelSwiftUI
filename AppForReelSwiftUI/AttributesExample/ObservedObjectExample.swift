//
//  ObservedObjectExample.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.09.2024.
//

import SwiftUI

class Settings: ObservableObject {
    @Published var isOn = false
}

struct ObservedObjectExample: View {
    
    @ObservedObject var settings = Settings()
    
    var body: some View {
        Toggle("Переключатель", isOn: $settings.isOn)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .font(.largeTitle)
            .padding(.bottom, 30)
        Button("Изменить настройки") {
            settings.isOn.toggle()
        }
    }
}

#Preview {
    ObservedObjectExample()
}
