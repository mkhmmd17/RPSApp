

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    //rock = 1, paper = 2, scissors = 3
    

    @IBOutlet weak var cpuImage: UIImageView!
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet public weak var cpuLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet public weak var youLabel: UILabel!
    
    
    var playerPoints = 0
    var cpuPoints = 0
    
    
    
    @IBAction func rockButton(_ sender: Any) {
        let cpuNumber = Int.random(in: 1...3)
        

        
                if cpuNumber == 1  {
                    statusLabel.text = "DRAW"
                    statusLabel.textColor = UIColor.yellow
                }
        
                //cpu = rock, player = paper
                if cpuNumber == 2  {
                    cpuPoints = cpuPoints + 1
                    statusLabel.text =  "LOSE"
                    cpuLabel.text = "CPU: \(cpuPoints)"
                    statusLabel.textColor = UIColor.red
                }
        
                //cpu = rock, player = scissors
                if cpuNumber == 3  {
                    playerPoints = playerPoints + 1
                    statusLabel.text = "WIN"
                    youLabel.text = "YOU: \(playerPoints)"
                    statusLabel.textColor = UIColor.green

                }
        setHandImage(imageView: cpuImage, imageNumber: cpuNumber)
        setUserImage(imageView: userImage, imageNumber: 1)
        
        UIView.transition(with: cpuImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        UIView.transition(with: userImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        
        
    }
    
    
    @IBAction func paperButton(_ sender: Any) {
        let cpuNumber = Int.random(in: 1...3)

        if cpuNumber == 1  {
            playerPoints = playerPoints + 1
            statusLabel.text = "WIN"
            youLabel.text = "YOU: \(playerPoints)"
            statusLabel.textColor = UIColor.green

        }

        //cpu = rock, player = paper
        if cpuNumber == 2  {
            statusLabel.text = "DRAW"
            statusLabel.textColor = UIColor.yellow
        }

        //cpu = rock, player = scissors
        if cpuNumber == 3  {
            cpuPoints = cpuPoints + 1
            statusLabel.text =  "LOSE"
            cpuLabel.text = "CPU: \(cpuPoints)"
            statusLabel.textColor = UIColor.red

        }
        setHandImage(imageView: cpuImage, imageNumber: cpuNumber)
        setUserImage(imageView: userImage, imageNumber: 2)


        

        UIView.transition(with: cpuImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        UIView.transition(with: userImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
       
        
        
    }
    
    @IBAction func scissorsButton(_ sender: Any) {
        let cpuNumber = Int.random(in: 1...3)
        
                if cpuNumber == 1  {
                    cpuPoints = cpuPoints + 1
                    statusLabel.text =  "LOSE"
                    cpuLabel.text = "CPU: \(cpuPoints)"
                    statusLabel.textColor = UIColor.red

                }
        
                //cpu = rock, player = paper
                if cpuNumber == 2  {
                    playerPoints = playerPoints + 1
                    statusLabel.text = "WIN"
                    youLabel.text = "YOU: \(playerPoints)"
                    statusLabel.textColor = UIColor.green
                }
        
                //cpu = rock, player = scissors
                if cpuNumber == 3  {
                    statusLabel.text = "DRAW"
                    statusLabel.textColor = UIColor.yellow
                }
        setHandImage(imageView: cpuImage, imageNumber: cpuNumber)
        setUserImage(imageView: userImage, imageNumber: 3)

        
        UIView.transition(with: cpuImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
        UIView.transition(with: userImage, duration: 0.5, options: .transitionFlipFromTop, animations: nil, completion: nil)
       
    }
    
    @IBAction func settingsButton(_ sender: Any) {
        
    }

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        NotificationCenter.default.addObserver(self, selector: #selector(resetScore), name: NSNotification.Name(rawValue: "reset"), object: nil)
    }
    
    @objc func resetScore() {
        
        playerPoints = 0
        cpuPoints = 0
        statusLabel?.text = "GO"
        statusLabel?.textColor = UIColor.black
        youLabel?.text = "YOU: \(playerPoints)"
        cpuLabel?.text = "CPU: \(cpuPoints)"
    }
//
    //help with setting the images
    func setHandImage(imageView:UIImageView, imageNumber:Int) {
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "rockBig")
        case 2:
            imageView.image = UIImage(named: "paperBig")
        case 3:
            imageView.image = UIImage(named: "scissorsBig")
        default:
            print("error")
        }
    }
    func setUserImage(imageView:UIImageView, imageNumber:Int) {
        switch imageNumber {
        case 1:
            imageView.image = UIImage(named: "rockBig")
        case 2:
            imageView.image = UIImage(named: "paperBig")
        case 3:
            imageView.image = UIImage(named: "scissorsBig")
        default:
            print("error")
        }
}
}


