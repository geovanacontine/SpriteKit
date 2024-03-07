//
//  MovementSystem.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

struct MovementSystem: GKSystem {
    
    let requiredComponents: [GKComponent.Type] = [
        PositionComponent.self
    ]
    
    let speed: Double = 10
    
    func update(entityManager: EntityManager, deltaTime: TimeInterval) {
        for entity in entityManager.entities(with: requiredComponents) {
            entity.component(ofType: PositionComponent.self)?.position.x += InputManager.shared.xAxis * speed
            entity.component(ofType: PositionComponent.self)?.position.y += InputManager.shared.yAxis * speed
        }
    }
}
