//
//  PropertyAnimatorEffectViewController.swift
//  iOS-10-Sampler
//
//  Created by Shuichi Tsutsumi on 9/12/16.
//  Copyright © 2016 Shuichi Tsutsumi. All rights reserved.
//
//  Thanks to: https://github.com/manuelCarlos/IOS10-Animate

import UIKit

class PropertyAnimatorEffectViewController: UIViewController {

    private var animator: UIViewPropertyAnimator!

    @IBOutlet private weak var effectView: UIVisualEffectView!
    @IBOutlet private weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animator = UIViewPropertyAnimator(duration: 0, curve: .linear) {
            self.effectView.effect = nil
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        animator.startAnimation()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func sliderChanged(sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
    }
}
