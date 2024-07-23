//
//  CardDetailView.swift
//  Cards
//
//  Created by dev on 23.07.2024.
//

import SwiftUI

struct CardDetailView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    @State private var currentModal: CardModal?
    
    var body: some View {
        Color.yellow
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

#Preview {
    CardDetailView()
        .environmentObject(ViewState())
}
