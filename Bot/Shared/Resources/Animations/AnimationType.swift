//
//  AnimationType.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import Foundation

enum AnimationType: String {
    case idle
    case walk
}

extension AnimationType {
    var animation: Animation {
        switch self {
        case .idle: .init(id: "idle", speed: 0.3, isLoop: true)
        case .walk: .init(id: "walk", speed: 0.1, isLoop: true)
        }
    }
}
