//
//  Operators.swift
//  Cards
//
//  Created by dev on 24.07.2024.
//

import SwiftUI

func + (left: CGSize, right: CGSize) -> CGSize {
    
    CGSize(
        width: left.width + right.width,
        height: left.height + right.height)
}
