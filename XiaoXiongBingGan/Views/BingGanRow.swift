//
//  BingGanRow.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import SwiftUI

struct BingGanRow: View {
    var binggan: BingGan
    var body: some View {
        HStack() {
            Text(binggan.name)
                .frame(alignment: .leading)
            
            Spacer()
            
            Text(binggan.description)
                .font(.subheadline)
                .frame(alignment: .trailing)
            
//            binggan.image
//                .resizable()
//                .frame(width: 36, height: 36)
                
        }
    }
}

struct BingGanRow_Previews: PreviewProvider {
    static var binggans = ModelData().bingGans

    static var previews: some View {
        Group {
            BingGanRow(binggan: binggans[0])
            BingGanRow(binggan: binggans[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
