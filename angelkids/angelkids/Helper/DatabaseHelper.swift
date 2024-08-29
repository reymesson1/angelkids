//
//  DatabaseHelper.swift
//  angelkids
//
//  Created by user250318 on 8/28/24.
//

import Foundation
import SQLite

class DatabaseManager {
    static let shared = DatabaseManager()
    var db: Connection? // Change access level to internal

    private init() {
        connectToDatabase()
    }

    private func connectToDatabase() {
        do {
            let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0].appendingPathComponent("my_database.sqlite3").path
            db = try Connection(path)
        } catch {
            print("Unable to connect to database: \(error)")
        }
    }
}
