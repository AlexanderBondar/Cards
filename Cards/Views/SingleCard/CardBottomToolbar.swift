//
//  CardBottomToolbar.swift
//  Cards
//
//  Created by dev on 23.07.2024.
//

import SwiftUI

struct CardBottomToolbar: View {
    
    @Binding var cardModal: CardModal?
        
    var body: some View {
        HStack {
          Button(action: { cardModal = .photoPicker }) {
            ToolbarButtonView(modal: .photoPicker)
          }
          Button(action: { cardModal = .framePicker }) {
            ToolbarButtonView(modal: .framePicker)
          }
          Button(action: { cardModal = .stickerPicker }) {
            ToolbarButtonView(modal: .stickerPicker)
          }
          Button(action: { cardModal = .textPicker }) {
            ToolbarButtonView(modal: .textPicker)
          }
        }
    }
}

#Preview {
    CardBottomToolbar(cardModal: .constant(.photoPicker))
        .previewLayout(.sizeThatFits)
        .padding()
}

struct ToolbarButtonView: View {
    
    private let modalButton:
    [CardModal: (text: String, imageName: String)] = [
        .photoPicker: ("Photos", "photo"),
        .framePicker: ("Frames", "square.on.circle"),
        .stickerPicker: ("Stickers", "heart.circle"),
        .textPicker: ("Text", "textformat")
    ]
    
    let modal: CardModal

    
    var body: some View {
        if let text = modalButton[modal]?.text,
           let imageName = modalButton[modal]?.imageName {
            VStack {
                Image(systemName: imageName)
                    .font(.largeTitle)
                Text(text)
            }
            .padding(.top)
        }
    }
}
