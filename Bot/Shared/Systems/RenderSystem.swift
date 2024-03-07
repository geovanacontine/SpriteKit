//
//  RenderSystem.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

struct RenderSystem: GKSystem {
    
    let requiredComponents: [GKComponent.Type] = [
        RenderComponent.self,
        PositionComponent.self
    ]
    
    func update(entityManager: EntityManager, deltaTime: TimeInterval) {
        for entity in entityManager.entities(with: requiredComponents) {
            let node = entity.component(ofType: RenderComponent.self)?.node
            let pos = entity.component(ofType: PositionComponent.self)?.position
            node?.position = pos ?? .zero
        }
    }
}
