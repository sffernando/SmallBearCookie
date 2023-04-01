//
//  ChatDetail.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import SwiftUI

struct ChatDetail: View {
    var binggan: BingGan
    var body: some View {
        Text(binggan.name)
            .font(.title)
        Text(binggan.description)
    }
}

struct ChatDetail_Previews: PreviewProvider {
    static var mdoelData = ModelData()
    static var previews: some View {
        ChatDetail(binggan: mdoelData.bingGans[0]).environmentObject(mdoelData)
    }
}
