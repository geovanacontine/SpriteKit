//
//  PositionComponent.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

class PositionComponent: GKComponent {
    
    var position: CGPoint
    
    init(position: CGPoint) {
        self.position = position
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
