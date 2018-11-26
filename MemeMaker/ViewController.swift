//
//  ViewController.swift
//  MemeMaker
//
//  Created by Antonio Porras on 11/26/18.
//  Copyright © 2018 Antonio Porras. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottmCaptionLable: UILabel!
    
    var topChoices = [
      CaptionOption (emoji: "☕️", caption: "Coffe addicts"),
      CaptionOption (emoji: "🍕", caption: "Newyorkers love Pizza"),
      CaptionOption (emoji: "🥯", caption: "Bagels for breakfast 😍")
    ]
    
    var bottomChoices = [
        CaptionOption (emoji: "✈️", caption: "Airports can be more organized 🧐"),
        CaptionOption (emoji: "🚇", caption: "Subwyas are always crowded 🤔"),
        CaptionOption (emoji: "⛴", caption: "The ferry ... once in a blue moon 😌")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // CODE FOR THE TOP CAPTION SEGMENTED CONTROL
        // DISABLE ORIGINAL BUTTONS + SELECT AN OPTION OF THE EMOJI AND CAPTION
        topCaptionSegmentedControl.removeAllSegments()
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
         topCaptionSegmentedControl.selectedSegmentIndex = 0
        }
        
        
        // CODE FOR THE BOTTOM CAPTION SEGMENTED CONTROL
        // DISABLE ORIGINAL BUTTONS + SELECT AN OPTION OF THE EMOJI AND CAPTION
        bottomCaptionSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
            bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        }
        captionChoicesTopandBttm()
    }
    
    // CODE FOR THE STRINGS WHEN YOU SELECT EACH BUTTON FROM THE SEGMENTED CONTROL
    
    func captionChoicesTopandBttm() {
        let topChoice =  topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        topCaptionLabel.text = topChoice
        let bottomChoice = bottomChoices[bottomCaptionSegmentedControl.selectedSegmentIndex].caption
        bottmCaptionLable.text = bottomChoice
    }
        
    @IBAction func segmentedControlActionButton(_ sender: UISegmentedControl) {
        captionChoicesTopandBttm()
        
    }
    
    
    
}
