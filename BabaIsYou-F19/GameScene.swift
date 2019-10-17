//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var baba:SKSpriteNode!
    let baba_speed:CGFloat = 30
    
    var movex: CGFloat = 0.0
    var movey: CGFloat = 0.0
    
    var persontouched: String!

    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        self.baba = self.childNode(withName: "baba") as! SKSpriteNode

    }
   
    func didBegin(_ contact: SKPhysicsContact) {
       
    }
    
    func restartPlayer() {
        self.baba.removeFromParent()
        baba.position = CGPoint(x:192, y:-128)
        addChild(baba)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
     // self.movebaba(mouseXPosition: self.movex, mouseYPostion: self.movey )

    }
    
    
 //   func movebaba(mouseXPosition:CGFloat, mouseYPostion:CGFloat) {


//        let a = (self.movex - (self.baba.position.x + baba_speed));
  //      let b = (self.movey - (self.baba.position.y + baba_speed));
    //    let distance = sqrt((a * a) + (b * b))
//
  //      let xn = (a / distance)
    //    let yn = (b / distance)

      //  self.baba.position.x = (self.baba.position.x ) + (xn * 10);
        //self.baba.position.y = (self.baba.position.y ) + (yn * 10);

    //}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let mouseTouch = touches.first
        if (mouseTouch == nil) {
            return
        }
        
        
        let mousePosition = mouseTouch!.location(in:self)
        
        print("mouseX = \(mousePosition.x)")
        print("mouseY = \(mousePosition.y)")
        print("-------")
      
        self.movex = mousePosition.x
        self.movey = mousePosition.y
       
       


//
////
////     let up = atPoint(mousePosition)
////       let down = atPoint(mousePosition)
////        let right = atPoint(mousePosition)
////        let left = atPoint(mousePosition)
let nodeTouched = atPoint(mousePosition).name

        if (nodeTouched == "up") {
            // move up
            self.baba.position.y = self.baba.position.y + baba_speed
        }
        else if (nodeTouched == "down") {
            // move down
            self.baba.position.y = self.baba.position.y - baba_speed
        }
        else if (nodeTouched == "left") {
            // move left
            self.baba.position.x = self.baba.position.x - baba_speed
        }
        else if (nodeTouched == "right") {
            // move right
            self.baba.position.x = self.baba.position.x + baba_speed
        }

        

       
    }
    
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
