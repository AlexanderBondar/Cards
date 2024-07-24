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
                Text("Resize Me!")
                    .fontWeight(.bold)
                    .font(.system(size: 500))
                    .minimumScaleFactor(0.01)
                    .lineLimit(1)
            }
            .resizableView()
            
            Circle()
                .resizableView()
                .offset(CGSize(width: 50, height: 200))
        }
    }
    
    var body: some View {
        content
            .modifier(CardToolbar(currentModal: $currentModal))
    }
}

#Preview {
    CardDetailView()
        .environmentObject(ViewState())
}
