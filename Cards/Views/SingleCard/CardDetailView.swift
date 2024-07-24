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
    
    var content: some View {
        ZStack {
            Group {
                Capsule()
                    .foregroundColor(.yellow)
//                    .resizableView()
                Text("Resize Me!")
                    .fontWeight(.bold)
                    .font(.system(size: 500))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
//                    .resizableView()
            }
            .resizableView()
            
            Circle()
                .resizableView()
                .offset(CGSize(width: 50, height: 200))
        }
    }
    
    var body: some View {
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

#Preview {
    CardDetailView()
        .environmentObject(ViewState())
}
