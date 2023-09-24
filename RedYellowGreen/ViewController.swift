//
//  ViewController.swift
//  RedYellowGreen
//
//  Created by Кристина on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
 
    @IBOutlet weak var redColor: UIView!
    
    @IBOutlet weak var yellowColor: UIView!
    
    @IBOutlet weak var greenColor: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    private var currentLight = CurrentLight.red
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        redColor.alpha = 0.5
        yellowColor.alpha = 0.5
        greenColor.alpha = 0.5
        
        startButton.layer.cornerRadius = 10
        
        
        redColor.layer.cornerRadius = redColor.frame.size.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.size.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.size.width / 2
        
        
    }



    @IBAction func startButtonPressed() {
    
   

            switch currentLight {
            case .red:
                redColor.alpha = 1.0
                yellowColor.alpha = 0.5
                greenColor.alpha = 0.5
                startButton.setTitle("NEXT", for: .normal)
                currentLight = .yellow
            case .yellow:
                redColor.alpha = 0.5
                yellowColor.alpha = 1.0
                greenColor.alpha = 0.5
                currentLight = .green
            case .green:
                redColor.alpha = 0.5
                yellowColor.alpha = 0.5
                greenColor.alpha = 1.0
                currentLight = .red
            }
        }
    }


//Добрый вечер! Простите, что сдаю в последние полчаса. Запуталась.., мне кажется, у меня не получается связать корректно здесь эти вью и кнопку, из-за этого пыталась менять по-разному код, убирать-добавлять функции, в итоге получилось все очень скомкано и не рабочее. Не хватает уже времени подумать, хотя подумать, конечно, нужно)
