//
//  ViewController.swift
//  GeneradorDadosCats
//
//  Created by Jésica González Baqué on 29/03/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dadosView: UIView!
    
    @IBOutlet weak var formularioView: UIView!
    @IBOutlet weak var vista2View: UIView!
    @IBOutlet weak var vista1View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        /*
        if UIDevice.current.orientation.isPortrait {
            print("Portrait")
            arrangePortrait()
        }
        else {
            print("Landscape")
            arrangeLandScape()
        }
         */
    }
    
    func arrangePortrait()
    {
        var screenSize = UIScreen.main.bounds.height
        var screenWidth = UIScreen.main.bounds.width
        var screenHeight = UIScreen.main.bounds.height
        
        print(screenWidth)
        print(screenHeight)
        
        var frame1:CGRect = dadosView.frame
        frame1.origin.x = 0
        frame1.origin.y = 0
        frame1.size.height = screenSize / 2
        dadosView.frame = frame1
        
        var frame2:CGRect = formularioView.frame
        frame2.origin.x = 0
        frame2.origin.y = screenSize / 2
        frame2.size.height = screenSize / 2
        formularioView.frame = frame2
    }
    
    func arrangeLandScape()
    {
        var screenHeight = UIScreen.main.bounds.width
        var screenWidth = UIScreen.main.bounds.height
        var screenSize = UIScreen.main.bounds.width
        
        print(screenWidth)
        print(screenHeight)
        
        var frame1:CGRect = dadosView.frame
        frame1.origin.x = 0
        frame1.origin.y = 0
        frame1.size.height = screenWidth
        dadosView.frame = frame1
        
        var frame2:CGRect = formularioView.frame
        frame2.origin.y = 0
        frame2.origin.x = screenHeight / 2
        frame2.size.height = screenWidth
        formularioView.frame = frame2
    }

}

