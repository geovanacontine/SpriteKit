//
//  GKEntity+Extension.swift
//  Bot
//
//  Created by Geovana Contine on 06/03/24.
//

import GameplayKit

extension GKEntity {
    func hasComponents(_ componentTypes: [GKComponent.Type]) -> Bool {
        let componentTypesSet = NSSet(array: componentTypes) as Set
        let types = components.map({ type(of: $0) })
        let typesSet = NSSet(array: types) as Set
        return componentTypesSet.isSubset(of: typesSet)
    }
}
