//
//  Player.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

class Player: BaseEntity {
    
    init(initialPosition: CGPoint) {
        super.init(
            assetName: "player_idle_1",
            size: .init(width: 128, height: 128),
            initialPosition: initialPosition
        )
        
        let walk = WalkComponent(speed: 10)
        addComponent(walk)
        
        let control = ControllableComponent()
        addComponent(control)
        
        let animation = AnimatableComponent()
        addComponent(animation)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
