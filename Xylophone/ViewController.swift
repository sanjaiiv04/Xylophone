
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //link multiple buttons to single IBAction if all buttons perform same action
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(key:sender.currentTitle!)
        sender.alpha=0.5//reducing sender's opacity by 1/2
        DispatchQueue.main.asyncAfter(deadline: .now()+0.2){
            sender.alpha=1.0
        }
    }
    func playSound(key:String) {
        //we create an object to play the audio file from the resource
        let url = Bundle.main.url(forResource: key, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)//we use the AVAudioPlayer to play the object
        player.play()
                
    }
}
