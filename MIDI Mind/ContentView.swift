//
//  ContentView.swift
//  MIDI Mind
//
//  Created by Bridget Peterkin on 3/8/22.
//

import SwiftUI
import AVKit
/**
 Simple MIDI player app that plays and pauses MIDI audio
 */
struct ContentView: View {
    @State var playButton = "play.circle"
    @State var playText = "Play"
    @State var brainColor = Color.pink
    var midiSong = MIDISong(midiFileName: "Stones&BouldersMIDI2",midiFileExt: "mid")
    var body: some View {
        ZStack {
            LinearGradient(colors: [brainColor,.white],startPoint: .top, endPoint: .center)
            VStack {
            Text("MIDI Mind")
                .padding()
                .font(.system(size:60))
                Spacer()
                HStack(spacing:20.0) {
                    Text(playText)
                        .foregroundColor(Color.black)
                    .padding()
                    .font(.system(size:50))
                Button(action: playPause) {
                    Image(systemName: playButton)
                        .foregroundColor(Color.black)
                }
            }.font(.system(size: 60))
                Spacer()
                Image("brain")
                    
                    
            }.onAppear(perform: {
                midiSong.midiPlayer.prepareToPlay()
            })
        }
    }
    func playPause() {
        if(playButton == "play.circle") {
            playSong()
        }else {
            pauseSong()
        }
    }

    func playSong() {
        midiSong.playSong()
        playButton = "pause.circle"
        playText = "Pause"
    }
    func pauseSong() {
        midiSong.pauseSong()
        playButton = "play.circle"
        playText = "Play"
    }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
