//
//  GameSceneView.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import SwiftUI
import SpriteKit

struct GameSceneView: View {
    
    let sceneName: String
    
    private var scene: SKScene? {
        let scene = SKScene(fileNamed: sceneName)
        scene?.scaleMode = .aspectFit
        return scene
    }
    
    var body: some View {
        if let scene {
            SpriteView(
                scene: scene,
                debugOptions: [.showsNodeCount, .showsPhysics, .showsFPS]
            )
            .ignoresSafeArea()
        }
    }
}
