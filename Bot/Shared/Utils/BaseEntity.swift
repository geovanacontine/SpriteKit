//
//  BaseEntity.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

class BaseEntity: GKEntity {
    
    init(
        assetName: String,
        size: CGSize,
        initialPosition: CGPoint
    ) {
        super.init()
        
        let render = RenderComponent(assetName: assetName, size: size)
        addComponent(render)
        
        let position = PositionComponent(position: initialPosition)
        addComponent(position)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
