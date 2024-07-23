//
//  CardsApp.swift
//  Cards
//
//  Created by dev on 18.06.2024.
//

import SwiftUI

@main
struct CardsApp: App {
    
    @StateObject var viewState = ViewState()
    
    var body: some Scene {
        WindowGroup {
            CardsView()
                .environmentObject(viewState)
        }
    }
}
