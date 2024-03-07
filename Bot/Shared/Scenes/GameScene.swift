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
        
        let player = Player(
            assetName: "player_idle_1",
            size: .init(width: 128, height: 128),
            initialPosition: .zero
        )
        
        entityManager.spawn(player)
    }
}
