//
//  OrientationComponent.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

enum OrientationType {
    case left
    case right
}

class OrientationComponent: GKComponent {
    var type: OrientationType = .right
}
