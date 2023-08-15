//
//  AudioPlayer.swift
//  Restart
//
//  Created by 김은혜 on 2023/08/03.
//

import Foundation
import AVFoundation // 사운드, 미디어 기능을 활용하기 위한 프레임워크

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) { // 음성 파일의 이름과 확장자
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound file.")
        }
    }
}
