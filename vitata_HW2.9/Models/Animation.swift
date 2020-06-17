//
//  Animation.swift
//  vitata_HW2.9
//
//  Created by Andrew on 6/17/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import Spring

struct Animation {
    let preset: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let rotate: CGFloat
    
    

}

extension Animation {
    
    static func getRandomOne() -> Animation {
        
        return Animation(
            preset: Spring.AnimationPreset.allCases.randomElement()!.rawValue,
            curve: Spring.AnimationCurve.allCases.randomElement()!.rawValue,
            force: CGFloat.random(in: 0...10),
            duration: CGFloat.random(in: 1...2),
            rotate: CGFloat.random(in: 0...90)
        )
        
    }
    
    
    
}
