//
//  BingGan.swift
//  XiaoXiongBingGan
//
//  Created by Fernando on 2023/4/1.
//

import Foundation
import SwiftUI

enum BingGanAction: String {
    case newChat, GPT3, GPT4, robot, advance ,setting, about
}

struct BingGan: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var description: String
    private var type: String
    private var imageName: String
    
    var image : Image {
        Image(imageName)
    }
    
    var action: BingGanAction {
        BingGanAction(rawValue: type) ?? .newChat
    }
}
