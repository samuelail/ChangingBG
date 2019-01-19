//
//  ViewController.swift
//  ChangingBG
//
//  Created by Sonar on 1/2/19.
//  Copyright © 2019 Sonar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: ChangingBG!
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //optional
        background.initialize()
        //optional
        releaseHearts()
    }
    
    //compulsory to emit hearts
    func releaseHearts() {
        let image = UIImage(named: "heart.png")
        let emitter = ChangingBG.getEmitterThat(emits: image!)
        emitter.emitterPosition = CGPoint(x: view.frame.size.width / 2, y: 0)
        emitter.emitterSize = CGSize(width: view.frame.size.width, height: 2.0)
        view.layer.addSublayer(emitter)
    }

}

