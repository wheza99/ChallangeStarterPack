//
//  HomeView.swift
//  ChallangeStarterPack
//
//  Created by Alief Wheza Harsojo on 15/05/24.
//

import SwiftUI
import SwiftData


struct HomeView: View {
    // Setup Swift Data
    @Environment(\.modelContext) private var modelContext
    
    // Query Data Status
    @Query private var status: [StatusModel]
    
    // State untuk Bottom Sheet
    @State private var showNewStatus = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(status) { _status in
                    Text(_status.status) // Menampilkan Status
                        .swipeActions { // Swipe Action
                            Button(role: .destructive) {
                                withAnimation {
                                    // Delete Swift Data
                                    modelContext.delete(_status)
                                }
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                }
            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("New Status") {
                        showNewStatus.toggle() // Mengganti State
                    }
                }
            }
            .sheet(
                isPresented: $showNewStatus,
                content: {
                    NavigationStack {
                        NewStatusView() // Menampilkan Bottom Sheet
                    }
                }
            )
        }
    }
}

#Preview {
    HomeView()
}
