//
//  CardToolbar.swift
//  Cards
//
//  Created by dev on 24.07.2024.
//

import SwiftUI

struct CardToolbar: ViewModifier {
    
    @EnvironmentObject var viewState: ViewState
    
    @Binding var currentModal: CardModal?
    
    func body(content: Content) -> some View {
        
        content
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { viewState.showAllCards.toggle() }) {
                        Text("Done")
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    CardBottomToolbar(cardModal: $currentModal)
                }
            }
    }
}

//#Preview {
//    CardToolbar()
//}
