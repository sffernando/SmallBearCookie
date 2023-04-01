//
//  ContentView.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "trophy.circle.fill")
                    Text("Home")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
