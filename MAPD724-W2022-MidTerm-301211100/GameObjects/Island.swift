/*
Island.swift
MAPD724-W2022-MidTerm-301211100
 
Author: Niraj Nepal (301211100)
Date: 2023-03-05
App Description: A mail pilot game app using Swift and SpriteKit.
*/
import GameplayKit
import SpriteKit

class Island : GameObject
{
    // initializer / constructor
    init()
    {
        super.init(imageString: "island", initialScale: 1.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    
    override func Start()
    {
        zPosition = Layer.island.rawValue
        verticalSpeed = 5.0
        Reset()
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -876)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 876
        // get a pseudo random number
        let randomX:Int = (randomSource?.nextInt(upperBound: 626))! - 313
        position.y = CGFloat(randomX)
        isColliding = false
    }
    
    // public method
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
