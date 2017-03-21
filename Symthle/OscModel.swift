//
//  OscModel.swift
//  Symthle
//
//  Created by Marx, Brian on 3/20/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import Foundation
import AudioKit

class OscModel: AKNode {
    
    var osc1 = AKOscillator()
    var osc2 = AKOscillator()
    var osc3 = AKOscillator()
    var osc4 = AKOscillator()
    var oscArray = [AKOscillator]()
    
    var freqy = 1000.0
    var amplitude = 0.0
    
    override init() {
        osc1 = AKOscillator(waveform: AKTable(.sawtooth), frequency: freqy, amplitude: 1.0)
        osc2 = AKOscillator(waveform: AKTable(.square))
        osc3 = AKOscillator(waveform: AKTable(.triangle))
        osc4 = AKOscillator(waveform: AKTable(.sine))
        oscArray = [osc1, osc2, osc3, osc4]
        super.init()
    }

    func setFreq(freq: Double) {
        for osc in oscArray {
            osc.frequency = freq
        }
    }//end setFreq
    
    func setAmplitude(amp: Double, forOsc oscillator: AKOscillator) {
        for osc in oscArray {
            if osc == oscillator {
                osc.amplitude = amp
            } else {
                osc.amplitude = 0.0
            }
        }
    }//end setAmplification
}
