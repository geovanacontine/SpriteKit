//
//  GameScene.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import SpriteKit

class GameScene: BaseScene {
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        let player = Player(initialPosition: .zero)
        let zombie = Zombie(initialPosition: .init(x: 0, y: 100))
        
        entityManager.spawn(player)
        entityManager.spawn(zombie)
    }
}
