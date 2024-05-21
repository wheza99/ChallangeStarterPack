//
//  StatusModel.swift
//  ChallangeStarterPack
//
//  Created by Alief Wheza Harsojo on 15/05/24.
//

import Foundation
import SwiftData

@Model
final class StatusModel {
    var status: String
    var date: Date
    
    // Init Swift Data
    init(status: String = "", date: Date = .now) {
        self.status = status
        self.date = date
    }
}
