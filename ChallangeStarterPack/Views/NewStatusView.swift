//
//  NewStatusView.swift
//  ChallangeStarterPack
//
//  Created by Alief Wheza Harsojo on 21/05/24.
//

import SwiftUI
import SwiftData

struct NewStatusView: View {
    // Setup Swift Data
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    // Init Status Model
    @State var status = StatusModel()
    
    var body: some View {
        List {
            Section{
                TextField("What do you feel?", text: $status.status )
            }
        }
        .navigationTitle("New Status")
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Cancel") {
                    dismiss() // Cancel
                }
            }
            ToolbarItem(placement: .primaryAction) {
                Button("Submit") {
                    modelContext.insert(status) // Add data ke Swift Data
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    NewStatusView()
}
