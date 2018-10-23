//
//  TempleCardViewController.swift
//  TempleCards
//
//  Created by Yshanshen on 10/22/18.
//  Copyright © 2018 UE Shen. All rights reserved.
//

import UIKit

class TempleCardViewController : UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
    
    
    var all_temples = TempleDeck.sharedInstance.temples
    var deck_length = TempleDeck.sharedInstance.count
    var is_study = true
    var current_index = 0
    var current_list = [String]()
    var score = 0
    var scoreString = "Score: "
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var correctWrongLabel: UILabel!
    
    @IBOutlet weak var actualAnswerLabel: UILabel!
    @IBOutlet weak var yourAnswer: UILabel!
    @IBOutlet weak var dropDown: UIPickerView!
    @IBOutlet weak var resetBtn: UIBarButtonItem!
    @IBOutlet weak var templeImage: UIImageView!
    @IBOutlet weak var templeLabel: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let selectedRow = randomMatches()[row]
        return selectedRow
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.actualAnswerLabel.text = self.current_list[row]
        self.dropDown.isHidden = true
        if (self.actualAnswerLabel.text == all_temples[current_index].name){
            score+=1
            correctWrongLabel.text = "Correct!"
            yourAnswer.isHidden = true
            actualAnswerLabel.isHidden = true

        }else{
            yourAnswer.isHidden = false
            actualAnswerLabel.isHidden = false
            correctWrongLabel.text = "Wrong Answer"
        }
        correctWrongLabel.isHidden = false
        dropDown.isHidden = true
         templeLabel.isHidden = false
        scoreLabel.text = scoreString + String(score)
    }
    
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
        if (is_study == false){
            yourAnswer.isHidden = true
            correctWrongLabel.isHidden = true
            dropDown.isHidden = false
            actualAnswerLabel.isHidden = true
            templeLabel.isHidden = true
            if (current_index >= all_temples.count-1){
                finalScoreLabel.isHidden = false
                scoreLabel.isHidden = true
                nextBtn.isEnabled = false
                finalScoreLabel.text = scoreString + String(score) + "/" + String(all_temples.count)
            }
        }
        
        current_index += 1
        if (current_index >= all_temples.count){
            current_index = 0
        }
        updateTemple(index: current_index)
    }
    
    @IBAction func resetView(_ sender: Any) {
        scoreLabel.text = "Score: 0"
        initView()
        if (is_study == true){
            studyMode()
        }else{
            quizMode()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    //helpers
    private func randomChoices()->String{
        return all_temples.randomElement()!.name
    }
    
    private func randomMatches()-> Array<String>{
        var temp_choices = [all_temples[current_index].name, randomChoices(), randomChoices(), randomChoices()]
        var shuffled_temp_choice = temp_choices.shuffled()
        current_list = shuffled_temp_choice
        return shuffled_temp_choice
//        options[0]!.titleLabel!.text = shuffled_temp_choice[0]
//        options[1]!.titleLabel!.text = shuffled_temp_choice[1]
//        options[2]!.titleLabel!.text = shuffled_temp_choice[2]
//        options[3]!.titleLabel!.text = shuffled_temp_choice[3]
    }
    
    
    private func studyMode(){
        finalScoreLabel.isHidden = true
        correctWrongLabel.isHidden = true
        yourAnswer.isHidden = true
        dropDown.isHidden = true
        actualAnswerLabel.isHidden = true
        resetBtn.isEnabled = false
        scoreLabel.isHidden = true
        templeLabel.isHidden = false
        previousBtn.isHidden = false

    }
    
    private func quizMode(){
        finalScoreLabel.isHidden = true
        correctWrongLabel.isHidden = true
        yourAnswer.isHidden = true
        dropDown.isHidden = false
        actualAnswerLabel.isHidden = true
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
