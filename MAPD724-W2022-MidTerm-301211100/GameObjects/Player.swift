/*
Player.swift
MAPD724-W2022-MidTerm-301211100
 
Author: Niraj Nepal (301211100)
Date: 2023-03-05
App Description: A mail pilot game app using Swift and SpriteKit.
*/
import GameplayKit
import SpriteKit

class Player : GameObject
{
    // Initializer
    init()
    {
        if(UIDevice.current.orientation.isLandscape){
            super.init(imageString: "plane", initialScale: 1.0)
        }else{
            super.init(imageString: "plane", initialScale: 2.0)
        }
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func Start()
    {
        zPosition = Layer.plane.rawValue
        Reset()
    }
    
    override func Update()
    {
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        // constrain the player on the left boundary
        if(position.x <= -320)
        {
            position.x = -320
        }
        
        // constrain the player on the right boundary
        if(position.x >= 320)
        {
            position.x = 320
        }
    }
    
    //Get the height of the screen and on reset set the players
    override func Reset()
    {
        position.y = UIScreen.main.bounds.height / 4
    }
    
    func TouchMove(newPos: CGPoint)
    {
        if abs(newPos.y) <= 135 {
            position = newPos
        }
    }
    
}
