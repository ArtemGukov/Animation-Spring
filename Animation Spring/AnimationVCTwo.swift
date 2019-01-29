//
//  AnimationVCTwo.swift
//  Animation Spring
//
//  Created by Артем on 02/10/2018.
//  Copyright © 2018 Gukov.space. All rights reserved.
//

import UIKit
import Spring

class AnimationVCTwo: UIViewController {

    @IBOutlet weak var viewAnimationCircle: SpringView!
    @IBOutlet weak var labelAnimationCircle: UILabel!
    @IBOutlet weak var buttonAnimationCircle: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.cornerRadius = 5
        viewAnimationCircle.layer.cornerRadius = viewAnimationCircle.frame.size.height / 2
        buttonAnimationCircle.layer.cornerRadius = buttonAnimationCircle.frame.size.height / 2
    }
    
    
    @IBAction func buttonActionCircle(_ sender: SpringButton) {
        let animateRandomTwo = animationArray.randomElement()
        viewAnimationCircle.animation = animateRandomTwo!
        labelAnimationCircle.text = animateRandomTwo
        viewAnimationCircle.animate()
    }
}
