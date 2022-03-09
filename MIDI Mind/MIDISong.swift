//
//  MIDISong.swift
//  MIDI Mind
//
//  Created by Bridget Peterkin on 3/9/22.
//

import SwiftUI
import AVKit

/**
 Class representing a MIDI Song*/
class MIDISong {
    var midiPlayer = AVMIDIPlayer()
    init(midiFileName: String, midiFileExt: String) {
        midiPlayer = try! AVMIDIPlayer(
            contentsOf: Bundle.main.url(forResource: midiFileName, withExtension: midiFileExt)!,
            soundBankURL: Bundle.main.url(forResource: "gs_instruments2", withExtension: "dls"))

    }
    func playSong() {
        midiPlayer.play({
            self.pauseSong()
        })
    }
    func pauseSong() {
        midiPlayer.stop()
    }
}
