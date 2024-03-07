//
//  BaseScene.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import SpriteKit

class BaseScene: SKScene {
    
    let entityManager = EntityManager()
    private let systemManager = SystemManager()
    
    // Update events
    override func update(_ currentTime: TimeInterval) {
        systemManager.update(entityManager: entityManager, deltaTime: currentTime)
    }
    
    // Input events
    override func keyDown(with event: NSEvent) { InputManager.shared.keyDown(event.keyCode) }
    override func keyUp(with event: NSEvent) { InputManager.shared.keyUp(event.keyCode) }
    
    override func didMove(to view: SKView) {
        entityManager.world = self
    }
}
