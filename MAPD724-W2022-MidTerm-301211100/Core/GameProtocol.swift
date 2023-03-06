/*
GameProtocol.swift
MAPD724-W2022-MidTerm-301211100
 
Author: Niraj Nepal (301211100)
Date: 2023-03-05
App Description: A mail pilot game app using Swift and SpriteKit.
*/
protocol GameProtocol
{
    // Initialization
    func Start()
    
    // update every frame
    func Update()
    
    // check if the position is outside the bounds of the Screen
    func CheckBounds()
    
    // a method to reset the position
    func Reset()
}
