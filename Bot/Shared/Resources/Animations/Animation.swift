//
//  Animation.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import SpriteKit

struct Animation {
    let id: String
    let speed: Double
    let isLoop: Bool
    
    func loadAction(entity: String) -> SKAction {
        let atlasName = entity + "_" + id
        let atlas = SKTextureAtlas(named: atlasName)
        let textures = atlas.textureNames.map({ atlas.textureNamed($0) })
        let action = SKAction.animate(with: textures, timePerFrame: speed)
        return isLoop ? .repeatForever(action) : action
    }
}
