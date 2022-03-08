//
//  ContentView.swift
//  MIDI Mind
//
//  Created by Bridget Peterkin on 3/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Text("MIDI Mind")
            .padding()
            .font(.system(size:60))
            Spacer()
            HStack(spacing:20.0) {
            Button(action: {
                print("try to play music")
            }, label: {
                Image(systemName: "play.circle.fill")
            })
            Button(action: {
                print("pause music")
            }, label: {
                Image(systemName: "pause.circle.fill")
            })
            
        }.font(.system(size: 60))
            Spacer()
            Image("brain")
                
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
