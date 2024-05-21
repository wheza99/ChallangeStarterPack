//
//  ChallangeStarterPackApp.swift
//  ChallangeStarterPack
//
//  Created by Alief Wheza Harsojo on 15/05/24.
//

//
// Selamat mengerjakan challange guys.
// Semoga starter pack ini bisa membantu group kalian.
// Have Fun!
//

import SwiftUI
import SwiftData

@main
struct ChallangeStarterPackApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: StatusModel.self) // Init Swift Data
    }
}
