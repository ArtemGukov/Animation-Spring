//
//  AnimationVC.swift
//  Animation Spring
//
//  Created by Артем on 01/10/2018.
//  Copyright © 2018 Gukov.space. All rights reserved.
//

import UIKit
import Spring

class AnimationVC: UIViewController {
    
    @IBOutlet weak var viewAnimationSquare: SpringView!
    @IBOutlet weak var labelAnimationSquare: UILabel!
    @IBOutlet weak var buttonAnimationSquare: SpringButton!
    
 override func viewDidLoad() {
    super.viewDidLoad()
        view.layer.cornerRadius = 5
        viewAnimationSquare.layer.cornerRadius = 5
        buttonAnimationSquare.layer.cornerRadius = 5
    }

    @IBAction func buttonActionSquare(_ sender: SpringButton) {
        let animateRandom = animationArray.randomElement()
        viewAnimationSquare.animation = animateRandom!
        labelAnimationSquare.text = animateRandom
        viewAnimationSquare.animate()
    }
    
}

