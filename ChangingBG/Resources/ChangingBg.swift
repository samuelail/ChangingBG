//
//  ChangingBg.swift
//  ChangingBG
//
//  Created by Sonar on 1/2/19.
//  Copyright © 2019 Sonar. All rights reserved.
//

import UIKit

class ChangingBG: UIImageView {
    
    func initialize() {
      //  self.image = UIImage(named: "AfterNoon.png"
        var greeting = String()
     //   var sunImg = String()
        let date     = Date()
        let calendar = Calendar.current
        let hour     = calendar.component(.hour, from: date)
        //let minutes  = calendar.component(.minute, from: date)
        let morning = 5; let afternoon=12; let evening=18; let night=22;
        
        print("Hour: \(hour)")
        if morning <= hour, hour < afternoon {
            greeting = "Good Morning!"
            self.image = UIImage(named: "AfterNoon.png")
            let sunImg = "sun.png"
            let image = UIImage(named: sunImg)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 237, y: 100, width: 100, height: 100)
            self.addSubview(imageView)
            
            //Twinkle effect
            UIView.animate(withDuration: 1, animations: {
                imageView.frame.origin.y -= 5
            }){_ in
                UIView.animateKeyframes(withDuration: 1, delay: 0.2, options: [.autoreverse, .repeat], animations: {
                    imageView.frame.origin.y += 5
                })
                
            }
        }else if afternoon <= hour, hour < evening{
            greeting = "Good Afternoon!"
            self.image = UIImage(named: "AfterNoon.png")
            let sunImg = "sun.png"
            let image = UIImage(named: sunImg)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 237, y: 100, width: 100, height: 100)
            self.addSubview(imageView)
            
            //Twinkle effect
            UIView.animate(withDuration: 1, animations: {
                imageView.frame.origin.y -= 5
            }){_ in
                UIView.animateKeyframes(withDuration: 1, delay: 0.2, options: [.autoreverse, .repeat], animations: {
                    imageView.frame.origin.y += 5
                })
                
            }
        }else if evening <= hour, hour < night{
            greeting = "Good Evening!"
            self.image = UIImage(named: "Night.png")
            let sunImg = "moon.png"
            let image = UIImage(named: sunImg)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 237, y: 100, width: 100, height: 100)
            self.addSubview(imageView)
            
            //Twinkle effect
            UIView.animate(withDuration: 1, animations: {
                imageView.frame.origin.y -= 5
            }){_ in
                UIView.animateKeyframes(withDuration: 1, delay: 0.2, options: [.autoreverse, .repeat], animations: {
                    imageView.frame.origin.y += 5
                })
                
            }
        }else{
            greeting = "Good Night"
            self.image = UIImage(named: "Night.png")
            let sunImg = "moon.png"
            let image = UIImage(named: sunImg)
            let imageView = UIImageView(image: image!)
            imageView.frame = CGRect(x: 237, y: 100, width: 70, height: 70)
            self.addSubview(imageView)
            
            //Twinkle effect
            UIView.animate(withDuration: 1, animations: {
                imageView.frame.origin.y -= 5
            }){_ in
                UIView.animateKeyframes(withDuration: 1, delay: 0.2, options: [.autoreverse, .repeat], animations: {
                    imageView.frame.origin.y += 5
                })
                
            }
        }
        print(greeting)
        }
    
    //Emitter
    class func getEmitterThat(emits image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterCells = getEmitterCells(with: image)
        return emitter
    }
    
    class func getEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        
        
        var cells = [CAEmitterCell]()
        let cell = CAEmitterCell()
        cell.contents = image.cgImage
        cell.birthRate = 1
        cell.lifetime = 50
        cell.velocity = CGFloat(25)
        cell.emissionLongitude = (180 * (.pi / 180))
        cell.emissionRange = (45 * (.pi / 180))
        cell.scale = 0.08
        cell.scaleRange = 0.1
        cell.spinRange = 0.6
        cells.append(cell)
        
        return cells
    }
}
