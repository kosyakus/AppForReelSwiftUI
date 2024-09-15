//
//  MemeScene.swift
//  AppForReelSwiftUI
//
//  Created by Natalia Sinitsyna on 15.09.2024.
//

import SwiftUI

struct MemeScene: View {
    @State private var name: String = ""
    @State private var selectedMeme: String = ""
    
    // Массив изображений мемов
    let memes = [
        "meme1", // Имя файла мем-изображения в проекте
        "meme2",
        "meme3",
        "meme4"
    ]
    
    var body: some View {
        VStack {
            // Поле для ввода имени
            TextField("Введите ваше имя", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 40)
            
            // Кнопка для генерации мема
            Button(action: generateMeme) {
                Text("Показать мем")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            
            // Показ выбранного мема
            if !selectedMeme.isEmpty {
                Image(selectedMeme)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.top, 40)
            }
            
            Spacer()
        }
    }
    
    // Функция для генерации мема на основе имени
    func generateMeme() {
        guard !name.isEmpty else { return }
        
        // Генерация числа на основе длины имени
        let index = name.count % memes.count
        selectedMeme = memes[index]
    }
}

#Preview {
    MemeScene()
}
