//
//  XiaoXiongBingGanApp.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import SwiftUI

@main
struct XiaoXiongBingGanApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(modelData)
        }
    }
}
