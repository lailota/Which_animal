//
//  ViewController.swift
//  Qual animal eu sou?
//
//  Created by Laila Guzzon Hussein Lailota on 03/12/20.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choose1: UIButton!
    @IBOutlet weak var choose2: UIButton!
    @IBOutlet weak var fundo: UIImageView!
    
    var animalBrain = AnimaisBrain()
    let animalArray = [ #imageLiteral(resourceName: "fundo"), #imageLiteral(resourceName: "tigre"), #imageLiteral(resourceName: "tubarão"), #imageLiteral(resourceName: "golfinho"), #imageLiteral(resourceName: "lhama")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        animalBrain.nextQuestion(sender.currentTitle!)
        
        updateUI()
        changeImage()
    }
    
    func updateUI() {
        choose1.setTitle(animalBrain.getChoice1(), for: .normal)
        choose2.setTitle(animalBrain.getChoice2(), for: .normal)
        questionLabel.text = animalBrain.getQuestionTitle()
    }
    
    func changeImage() {
        if animalBrain.changeAnimal() == 3 {
            fundo.image = animalArray[2]
        } else if animalBrain.changeAnimal() == 4 {
            fundo.image = animalArray[1]
        } else if animalBrain.changeAnimal() == 5 {
            fundo.image = animalArray[4]
        } else if animalBrain.changeAnimal() == 6 {
            fundo.image = animalArray[3]
        } else {
            fundo.image = animalArray[0]
        }
    }
}


