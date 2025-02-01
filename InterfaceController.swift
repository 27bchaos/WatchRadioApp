import WatchKit
import AVFoundation

class InterfaceController: WKInterfaceController {
    
    var player: AVPlayer?

    @IBAction func playButtonTapped() {
        guard let url = URL(string: "https://prod-3-84-19-111.amperwave.net/audacy-wqalfmaac-imc") else {
            print("Invalid stream URL")
            return
        }
        player = AVPlayer(url: url)
        player?.play()
    }

    @IBAction func stopButtonTapped() {
        player?.pause()
    }
}
