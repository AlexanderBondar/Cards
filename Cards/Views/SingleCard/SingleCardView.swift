//
//  SingleCardView.swift
//  Cards
//
//  Created by dev on 22.07.2024.
//

import SwiftUI

struct SingleCardView: View {
    
    @EnvironmentObject var viewState: ViewState
    
    var body: some View {
        NavigationView {
            CardDetailView()
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("Details")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    SingleCardView()
        .environmentObject(ViewState())
}


