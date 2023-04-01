//
//  MainView.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                ForEach(modelData.bingGans) { bingGan in
                    NavigationLink {
                        ChatDetail(binggan: bingGan)
                    } label: {
                        BingGanRow(binggan: bingGan)
                    }
                }
            }
            .environment(\.defaultMinListRowHeight, 56)
            .navigationTitle("XiaoXiong")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ModelData())
    }
}
