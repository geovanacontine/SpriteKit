//
//  AnimationSystem.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

struct AnimationSystem: GKSystem {
    
    let requiredComponents: [GKComponent.Type] = [
        RenderComponent.self,
        AnimatableComponent.self
    ]
    
    func update(entityManager: EntityManager, deltaTime: TimeInterval) {
        for entity in entityManager.entities(with: requiredComponents) {
            
            guard 
                let animationComponent = entity.component(ofType: AnimatableComponent.self),
                let nextAnimation = animationComponent.next,
                nextAnimation != animationComponent.current
            else { return }
            
            let node = entity.component(ofType: RenderComponent.self)?.node
            
            let entityClass = type(of: entity)
            let entityName = String(describing: entityClass).lowercased()
            let action = nextAnimation.animation.loadAction(entity: entityName)
            node?.run(action)
            
            entity.component(ofType: AnimatableComponent.self)?.current = nextAnimation
            entity.component(ofType: AnimatableComponent.self)?.next = nil
        }
    }
}
