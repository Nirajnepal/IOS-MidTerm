/*
Ocean.swift
MAPD724-W2022-MidTerm-301211100
 
Author: Niraj Nepal (301211100)
Date: 2023-03-05
App Description: A mail pilot game app using Swift and SpriteKit.
*/
import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    // constructor / initializer
    init()
    {
        super.init(imageString: "ocean", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = Layer.ocean.rawValue
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    override func CheckBounds()
    {
        if(position.x <= -890)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 890
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}
