//
//  ContentView.swift
//  ChallangeStarterPack
//
//  Created by Alief Wheza Harsojo on 15/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView().tabItem {
                Label(
                    "Home",
                    systemImage: "house"
                )
            }
            HistoryView().tabItem {
                Label(
                    "History",
                    systemImage: "clock.arrow.circlepath"
                )
            }
            ProfileView().tabItem {
                Label(
                    "Profile",
                    systemImage: "person"
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
