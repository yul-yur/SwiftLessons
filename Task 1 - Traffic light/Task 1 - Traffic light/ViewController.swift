
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var switchLightButton: UIButton!
  
    
   var currentLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 90
        yellowLightView.layer.cornerRadius = 90
        greenLightView.layer.cornerRadius = 90
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        switchLightButton.layer.cornerRadius = 10
        
        currentLightView = redLightView
    }
    
    @IBAction func switchLightButtonPressed() {
        switchLightButton.setTitle("Next", for: .normal)
        
        switch currentLightView {
                case redLightView:
                    redLightView.alpha = 1
                    yellowLightView.alpha = 0.3
                    greenLightView.alpha = 0.3
                    currentLightView = yellowLightView
                case yellowLightView:
                    yellowLightView.alpha = 1
                    redLightView.alpha = 0.3
                    greenLightView.alpha = 0.3
                    currentLightView = greenLightView
                case greenLightView:
                    greenLightView.alpha = 1
                    redLightView.alpha = 0.3
                    yellowLightView.alpha = 0.3
                    currentLightView = redLightView
                default:
                    currentLightView = redLightView
                }
    }
}

