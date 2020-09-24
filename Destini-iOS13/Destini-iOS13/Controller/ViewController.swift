//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by while on 08/08/2019.
//  Copyright © 2020 while. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(choice: (sender.titleLabel?.text)!!)
        updateView()
    }
    
    func updateView(){
        storyLabel.text = storyBrain.getStoryText()
        choice1Button.setTitle(storyBrain.getButtonLabel(button: 1), for: .normal)
        choice2Button.setTitle(storyBrain.getButtonLabel(button: 2), for: .normal)
    }
}

