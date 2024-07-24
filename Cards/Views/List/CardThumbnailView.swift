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
            .foregroundColor(.random())
            .frame(
              width: Settings.thumbnailSize.width,
              height: Settings.thumbnailSize.height
            )
    }
}

#Preview {
    CardThumbnailView()
}
