//
//  EntityManager.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

class EntityManager {
    
    weak var world: SKScene?
    private var entities: [GKEntity] = []
    
    func spawn(_ entity: GKEntity) {
        entities.append(entity)
        
        if let node = entity.component(ofType: RenderComponent.self)?.node {
            world?.addChild(node)
        }
    }
    
    func destroy(_ entity: GKEntity) {
        entities.removeAll(where: { $0 == entity })
        entity.component(ofType: RenderComponent.self)?.node.removeFromParent()
    }
    
    func entities(with componentTypes: [GKComponent.Type]) -> [GKEntity] {
        entities.filter({ $0.hasComponents(componentTypes) })
    }
}
