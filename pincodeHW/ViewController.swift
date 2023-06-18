//
//  ViewController.swift
//  pincodeHW
//
//  Created by Olzhas Zhakan on 18.06.2023.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var circle1: UIImageView!
    @IBOutlet weak var circle2: UIImageView!
    @IBOutlet weak var circle3: UIImageView!
    @IBOutlet weak var circle4: UIImageView!
    
    var circles = 0
    let pincode = "1234"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
          
            guard circles < 4 else {
                return
            }
          
        circles += 1
        
            switch circles {
            case 1:
                circle1.image = UIImage(systemName: "circle.fill")
            case 2:
                circle2.image = UIImage(systemName: "circle.fill")
            case 3:
                circle3.image = UIImage(systemName: "circle.fill")
            case 4:
                circle4.image = UIImage(systemName: "circle.fill")
          
            default:
                break
            }
        }
    @IBAction func deleteButtonTapped(_ sender: UIButton) {
       
            guard circles > 0 else {
                return
            }
            
            circles -= 1
        
            switch circles {
            case 0:
                circle1.image = UIImage(systemName: "circle")
            case 1:
                circle2.image = UIImage(systemName: "circle")
            case 2:
                circle3.image = UIImage(systemName: "circle")
            case 3:
                circle4.image = UIImage(systemName: "circle")
            default:
                break
            }
        }
}

