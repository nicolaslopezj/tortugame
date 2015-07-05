//
//  GameScene.swift
//  tortugame
//
//  Created by Nicolás López on 04-07-15.
//  Copyright (c) 2015 Nicolás López. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let tortu = TortuNode()
    
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.whiteColor()
        
        tortu.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame))
        
        self.addChild(tortu)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        
        tortu.update()
    }
}
