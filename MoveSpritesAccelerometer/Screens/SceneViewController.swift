//
//  SceneViewController.swift
//  MoveSpritesAccelerometer
//
//  Created by Андрей Груненков on 09.07.2022.
//

import UIKit
import SpriteKit
import GameplayKit

class SceneViewController: UIViewController {
    
    let skView: SKView = SKView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = skView
        // Load the SKScene from 'CupScene.sks'
        if let scene = SKScene(fileNamed: "GameScene") {
            // Set the scale mode to scale to fit the window
            scene.scaleMode = .aspectFill
            scene.backgroundColor = .white
            // Present the scene
            skView.presentScene(scene)
        }
        
        skView.ignoresSiblingOrder = true
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

