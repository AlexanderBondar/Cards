//
//  CardsView.swift
//  Cards
//
//  Created by dev on 23.07.2024.
//

import SwiftUI

struct CardsView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        ZStack {
            CardsListView()
            
            if !viewState.showAllCards {
                SingleCardView()
            }
        }
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
            .environmentObject(ViewState())
    }
}
