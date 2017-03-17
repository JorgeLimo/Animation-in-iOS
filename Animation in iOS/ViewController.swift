//
//  ViewController.swift
//  Animation in iOS
//
//  Created by alumno on 3/16/17.
//  Copyright © 2017 Jorge Luis Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwvista: UIView!
    @IBOutlet weak var btnanimar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        vwvista.layer.cornerRadius = 30.0
        vwvista.layer.borderWidth = 2.0
        vwvista.layer.borderColor = UIColor.red.cgColor
        vwvista.layer.shadowColor = UIColor.black.cgColor
        vwvista.layer.shadowOffset = CGSize(width: -10, height: -10)
        vwvista.layer.shadowRadius = 5.0
        vwvista.layer.shadowOpacity = 0.5
        
        btnanimar.layer.cornerRadius = 10.0
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func actionanimar(_ sender: UIButton) {
        
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        animation.fromValue = 30
        animation.toValue = vwvista.frame.size.width/2
        animation.duration = 2.0
        //relentear la animacion
        animation.beginTime = CACurrentMediaTime() + 1.0
        animation.fillMode = kCAFillModeBackwards
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
        
        vwvista.layer.add(animation, forKey: "cornerRadius")
        //laultima linea ayuda a que al terminar la animacion se mantenta como tal
        //porque sin esta linea regresaria a su forma original luego de la animacion
        vwvista.layer.cornerRadius = vwvista.frame.size.width/2
        
        
        let animacionBorde = CABasicAnimation(keyPath: "borderWidth")
        animacionBorde.fromValue = 2
        animacionBorde.toValue = 4
        animacionBorde.duration = 1.0
        vwvista.layer.add(animacionBorde, forKey: "borderWidth")
        vwvista.layer.borderWidth = 4
        
        
        let animacionBordeColor = CABasicAnimation(keyPath: "borderColor")
        animacionBordeColor.fromValue = vwvista.layer.borderColor
        animacionBordeColor.toValue = UIColor.blue.cgColor
        animacionBordeColor.duration = 5.0
        vwvista.layer.add(animacionBordeColor, forKey: "borderColor")
        vwvista.layer.borderColor = UIColor.blue.cgColor
        
        
        
        /**UIView.animate(withDuration: 3.0, animations: {
            self.vwvista.alpha = 0.0
            }) { (
                completion) in
                print("temrino la animacion")
        }**/
        
       /** UIView.animate(withDuration: 3.0, delay: 1.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.vwvista.backgroundColor = UIColor.blue
            }) { (completion) in
                print("Terimno la animacion papu")
        }**/
        
        
        let animacioncolorFondo = CABasicAnimation(keyPath: "backgroundColor")
        animacioncolorFondo.fromValue = vwvista.backgroundColor?.cgColor
        animacioncolorFondo.toValue =  UIColor.darkGray.cgColor
        animacioncolorFondo.duration = 3.0
        animacioncolorFondo.beginTime = CACurrentMediaTime() + 1.0
        animacioncolorFondo.fillMode  = kCAFillModeBackwards
        animacioncolorFondo.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        
            
        vwvista.layer.add(animacioncolorFondo, forKey: "backgroundColor")
        vwvista.layer.backgroundColor  = UIColor.darkGray.cgColor
        
        //Cambiar de posicion
        UIView.animate(withDuration: 3.0){
            self.vwvista.frame = CGRect(x: 0, y: 0, width: self.vwvista.frame.size.width, height: self.vwvista.frame.size.height)
        }
        
        
        let animationRotation = CABasicAnimation(keyPath: "transform.rotation")
        animationRotation.fromValue  = 0.0
        animationRotation.toValue = M_PI
        animationRotation.duration  = 5.0
        
        vwvista.layer.add(animationRotation, forKey: "transform.rotation")
        
        
    }
    
    


}

