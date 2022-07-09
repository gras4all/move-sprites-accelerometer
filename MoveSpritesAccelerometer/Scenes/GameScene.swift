//
//  GameScene.swift
//  MoveSpritesAccelerometer
//
//  Created by Андрей Груненков on 09.07.2022.
//

import SpriteKit
import GameplayKit
import CoreMotion

class GameScene: SKScene {
    
    var eagle = SKSpriteNode()
    var motionManager = CMMotionManager()
    var destX: CGFloat  = 0.0
    var destY: CGFloat  = 0.0
    
    override func didMove(to view: SKView) {

        // 1
        eagle = SKSpriteNode(imageNamed: "Eagle")
        eagle.position = CGPoint(x: 0, y: 0)
        eagle.size = CGSize(width: 250, height: 200)
        self.addChild(eagle)
        
        if motionManager.isAccelerometerAvailable {
            // 2
            motionManager.accelerometerUpdateInterval = 0.01
            motionManager.startAccelerometerUpdates(to: .main) {
                (data, error) in
                guard let data = data, error == nil else {
                    return
                }
                
                // 3
                let currentX = self.eagle.position.x
                self.destX = currentX + CGFloat(data.acceleration.x * 1000)
                    
                // 4
                let currentY = self.eagle.position.y
                self.destY = currentY + CGFloat(data.acceleration.y * 1000)
                
                
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        let actionX = SKAction.moveTo(x: destX, duration: 1)
        let actionY = SKAction.moveTo(y: destY, duration: 1)
        eagle.run(actionX)
        eagle.run(actionY)
    }

}

