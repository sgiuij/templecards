//
//  TempleCardViewController.swift
//  TempleCards
//
//  Created by Yshanshen on 10/22/18.
//  Copyright © 2018 UE Shen. All rights reserved.
//

import UIKit

class TempleCardViewController : UIViewController {
    
    var all_temples = TempleDeck.sharedInstance.temples
    var deck_length = TempleDeck.sharedInstance.count
    var is_study = true
    var current_index = 0
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var resetBtn: UIBarButtonItem!
    @IBOutlet weak var templeImage: UIImageView!
    @IBOutlet weak var templeLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func studyQuizSegment(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            is_study = true
            studyMode()
        case 1:
            is_study = false
            quizMode()
        default:
            break
        }
    }
    
    @IBAction func goToPrevious(_ sender: Any) {
        current_index -= 1
        if (current_index < 0){
            current_index = all_temples.count-1
        }
        updateTemple(index: current_index)
    }
    
    @IBAction func goToNext(_ sender: Any) {
        current_index += 1
        if (current_index >= all_temples.count){
            current_index = 0
        }
        updateTemple(index: current_index)
    }
    
    @IBAction func resetView(_ sender: Any) {
        scoreLabel.text = "Score: 0"
        initView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //helpers
    private func studyMode(){
        resetBtn.isEnabled = false
        scoreLabel.isHidden = true
        templeLabel.isHidden = false
        previousBtn.isHidden = false

    }
    
    private func quizMode(){
        scoreLabel.isHidden = false
        resetBtn.isEnabled = true
        previousBtn.isHidden = true
        templeLabel.isHidden = true
    }
    
    private func updateTemple(index: Int){
        templeImage.image = UIImage(named: all_temples[index].filename)
        templeLabel.text = all_temples[index].name
    }
    
    private func initView(){
        current_index = 0
        all_temples.shuffle()
        updateTemple(index: current_index)
    }
    
    private func updateUI(){
        self.initView()
        studyMode()
    }
    
}
