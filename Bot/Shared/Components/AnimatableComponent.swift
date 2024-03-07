//
//  AnimatableComponent.swift
//  Bot
//
//  Created by Geovana Contine on 07/03/24.
//

import GameplayKit

class AnimatableComponent: GKComponent {
    var current: AnimationType = .walk
    var next: AnimationType? = .idle
}
