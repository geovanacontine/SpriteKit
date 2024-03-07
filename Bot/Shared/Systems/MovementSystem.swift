//
//  MovementSystem.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

struct MovementSystem: GKSystem {
    
    let requiredComponents: [GKComponent.Type] = [
        PositionComponent.self,
        WalkComponent.self,
        ControllableComponent.self
    ]
    
    func update(entityManager: EntityManager, deltaTime: TimeInterval) {
        for entity in entityManager.entities(with: requiredComponents) {
            
            let xAxis = InputManager.shared.xAxis
            let yAxis = InputManager.shared.yAxis
            
            let isWalking = !xAxis.isZero || !yAxis.isZero
            
            if isWalking {
                let speed = entity.component(ofType: WalkComponent.self)?.speed ?? 0
                entity.component(ofType: PositionComponent.self)?.position.x += xAxis * speed
                entity.component(ofType: PositionComponent.self)?.position.y += yAxis * speed
                entity.component(ofType: AnimatableComponent.self)?.next = .walk
                entity.component(ofType: OrientationComponent.self)?.type = xAxis > 0 ? .right : .left
            } else {
                entity.component(ofType: AnimatableComponent.self)?.next = .idle
            }
        }
    }
}
