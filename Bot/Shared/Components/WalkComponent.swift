//
//  WalkComponent.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

class WalkComponent: GKComponent {
    
    var speed: Double
    
    init(speed: Double) {
        self.speed = speed
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
