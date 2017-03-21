//
//  SynthViewController.swift
//  Symthle
//
//  Created by Marx, Brian on 3/20/17.
//  Copyright © 2017 Marx, Brian. All rights reserved.
//

import Foundation
import AudioKit

class SynthViewController: UIViewController {
    
    let oscMod: OscModel?
    let filterMod = FilterModel(oscMod)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
