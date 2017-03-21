//
//  FilterModel.swift
//  Symthle
//
//  Created by Marx, Brian on 3/20/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import Foundation
import AudioKit

class FilterModel: AKNode {
    
    var lp: AKLowPassFilter?
    var bp: AKBandPassFilter?
    var hp: AKHighPassFilter?
    var osc: OscModel?
    var filters = [AnyObject]()
    
    var frequency = 1000.0
    var resonance = 1000.0
    
    init(oscModel: OscModel) {
        self.lp = AKLowPassFilter(oscModel)
        self.bp = AKBandPassFilter(oscModel)
        self.hp = AKHighPassFilter(oscModel)
        
        filters = [self.lp!, self.bp!, self.hp!]
    }
    
    func setResonance(res: Double) {
        self.resonance = res
        for filter in filters {
            if filter as! NSObject == bp! {
                bp!.bandwidth = res
            } else if filter as! NSObject == hp! {
                hp!.resonance = res
            } else if filter as! NSObject == lp! {
                lp!.resonance = res
            }
        }
    }
    
    func setFreq(frequency: Double) {
        self.frequency = frequency
        for filter in filters {
            if filter as! NSObject == bp! {
                bp!.centerFrequency = frequency
            } else if filter as! NSObject == hp! {
                hp!.cutoffFrequency = frequency
            } else if filter as! NSObject == lp! {
                lp!.cutoffFrequency = frequency
            }
        }
    }
    
    func setAmplitude(amp: Double) {
        
    }
}
