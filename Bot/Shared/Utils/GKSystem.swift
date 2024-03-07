//
//  GKSystem.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

protocol GKSystem {
    var requiredComponents: [GKComponent.Type] { get }
    func update(entityManager: EntityManager, deltaTime: TimeInterval)
}
