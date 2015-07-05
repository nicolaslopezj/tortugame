//
//  TortuMouthNode.swift
//  tortugame
//
//  Created by Nicolás López on 05-07-15.
//  Copyright (c) 2015 Nicolás López. All rights reserved.
//

import SpriteKit

enum MouthState {
    case Open
    case Closed
    case Chewing
}

class TortuMouthNode: SKSpriteNode {
    
    var state: MouthState {
        get {
            return MouthState.Closed
        }
        
        set(state) {
            
        }
    }
    
    convenience init() {
        self.init()
    }

}
