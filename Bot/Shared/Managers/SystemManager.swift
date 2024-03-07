//
//  SystemManager.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

struct SystemManager {
    
    private let systems: [GKSystem] = [
        MovementSystem(),
        RenderSystem()
    ]
    
    func update(entityManager: EntityManager, deltaTime: TimeInterval) {
        for system in systems {
            system.update(entityManager: entityManager, deltaTime: deltaTime)
        }
    }
}
