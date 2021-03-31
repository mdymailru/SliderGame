//
//  ViewController.swift
//  SliderGame
//
//  Created by  Дмитрий Мартынов on 31.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        slider.value = Float.random(in: 1..<50)
        self.changeSlider(slider)
    }

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    @IBAction func changeSlider(_ sender: UISlider) {
        let strSliderValue = String(Int(sender.value.rounded()))
        label.text = strSliderValue
    }
}

