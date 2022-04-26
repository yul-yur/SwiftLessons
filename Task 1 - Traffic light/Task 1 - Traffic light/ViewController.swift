
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var switchLightButton: UIButton!
  
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    private var currentLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        switchLightButton.layer.cornerRadius = 10
        
        currentLightView = redLightView
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
    }
    
    @IBAction func switchLightButtonPressed() {
        switchLightButton.setTitle("Next", for: .normal)
        
        switch currentLightView {
                case redLightView:
                    redLightView.alpha = lightIsOn
                    yellowLightView.alpha = lightIsOff
                    greenLightView.alpha = lightIsOff
                    currentLightView = yellowLightView
                case yellowLightView:
                    yellowLightView.alpha = lightIsOn
                    redLightView.alpha = lightIsOff
                    greenLightView.alpha = lightIsOff
                    currentLightView = greenLightView
                default:
                    greenLightView.alpha = lightIsOn
                    redLightView.alpha = lightIsOff
                    yellowLightView.alpha = lightIsOff
                    currentLightView = redLightView
                }
    }
}

