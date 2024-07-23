//
//  CardsListView.swift
//  Cards
//
//  Created by dev on 19.06.2024.
//

import SwiftUI

struct CardsListView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ForEach(0..<10) { _ in
                    CardThumbnailView()
                        .onTapGesture {
                            viewState.showAllCards.toggle()
                        }
                }
            }
        }
        .scrollBounceBehavior(.basedOnSize)
    }
}

#Preview {
    CardsListView()
        .environmentObject(ViewState())
}


