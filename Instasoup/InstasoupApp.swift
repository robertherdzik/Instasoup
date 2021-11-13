//
//  InstasoupApp.swift
//  Instasoup
//
//  Created by Robert Herdzik on 13/11/21.
//

import SwiftUI

@main
struct InstasoupApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: HomeViewModelMock.makeFullMock())
        }
    }
}
