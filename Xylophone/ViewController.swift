//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
                UIView.animate(withDuration: 0.2) {
                    sender.alpha = 1.0
                }
                print("Finish")
            }
        print("Start")
        playSound(sound: sender.currentTitle!)  // ! для того, что курТайтл может не быть у кнопки, это не обязательный параметр. А ! показывает, что значение должно быть
        print(sender.currentTitle!)  // получение названия нажатой кнопки
    }
    
    func playSound(sound: String) {
            let url = Bundle.main.url(forResource: sound, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
        }
    

}

