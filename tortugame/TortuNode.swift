//
//  TortuNode.swift
//  tortugame
//
//  Created by Nicolás López on 04-07-15.
//  Copyright (c) 2015 Nicolás López. All rights reserved.
//

import SpriteKit

class TortuNode: SKSpriteNode {
    
    var mouths = [/*SKSpriteNode(imageNamed: "mouth1"), SKSpriteNode(imageNamed: "mouth2"),*/ SKSpriteNode(imageNamed: "mouth3"), SKSpriteNode(imageNamed: "mouth4"), SKSpriteNode(imageNamed: "mouth5"), SKSpriteNode(imageNamed: "mouth6")]
    var loops = 0
    
    convenience init() {
        self.init()
        self.setupFace()
        self.setupMouths()
    }
    
    func update() {
        if loops % 10 == 0 {
            self.changeMouth()
        }

        loops++
    }
    
    
    func setupFace() {
        let sprite = SKSpriteNode(imageNamed:"face")
        
        sprite.xScale = 0.5
        sprite.yScale = 0.5
        sprite.position = CGPointMake(0, 0)
        
        self.addChild(sprite)
    }
    
    func setupMouths() {
        for mouth in mouths {
            mouth.xScale = 0.5
            mouth.yScale = 0.5
            mouth.position = CGPointMake(0, -10)
            mouth.hidden = true
            self.addChild(mouth)
        }
        mouths[0].hidden = false
    }
    
    func changeMouth() {
        var visibleMouth = 0
        
        for mouth in mouths {
            if !mouth.hidden {
                println("visible is \(index)")
                mouth.hidden = true
                
                var nextMouth = visibleMouth + 1
                
                if nextMouth >= mouths.count {
                    nextMouth = 0
                }
                
                mouths[nextMouth].hidden = false
                return
            }
            visibleMouth++
        }
    }

}
