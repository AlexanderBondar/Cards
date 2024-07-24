//
//  ViewExtensions.swift
//  Cards
//
//  Created by dev on 24.07.2024.
//

import SwiftUI

extension View {
  func resizableView() -> some View {
    return modifier(ResizableView())
  }
}
