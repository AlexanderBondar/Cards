//
//  CardThumbnailView.swift
//  Cards
//
//  Created by dev on 22.07.2024.
//

import SwiftUI

struct CardThumbnailView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(.gray)
            .frame(width: 150, height: 250)
    }
}

#Preview {
    CardThumbnailView()
}
