//
//  RenderComponent.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

class RenderComponent: GKComponent {
    
    let node: SKSpriteNode
    
    init(assetName: String, size: CGSize) {
        node = .init(
            texture: .init(imageNamed: assetName),
            size: size
        )
        
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
