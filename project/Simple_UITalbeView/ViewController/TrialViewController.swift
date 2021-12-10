//
//  TrialViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class TrialViewController: UIViewController {

    @IBOutlet weak var diagramButton: UIButton!
    @IBOutlet weak var compatibleButton: UIButton!
    @IBOutlet weak var functionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    
    private func setUI() {
        title = "演習問題"
        diagramButton.fillStyle(color: .blue)
        compatibleButton.fillStyle(color: .blue)
        functionButton.fillStyle(color: .blue)
    }
    
    @IBAction func pressedDiagramButton(_ sender: Any) {
        let quizStoryboard = UIStoryboard.init(name: "QuizView", bundle: nil)
        guard let quizVC = quizStoryboard.instantiateInitialViewController() as? QuizViewController else {
            return
        }
        navigationController?.pushViewController(quizVC, animated: true)
    }
    
    @IBAction func pressCompatibleButton(_ sender: Any) {
        let compatibleStoryboard = UIStoryboard.init(name: "QuizCompatibleView", bundle: nil)
        guard let compatibleVC = compatibleStoryboard.instantiateInitialViewController() as? QuizCompatibleViewController else {
            return
        }
        navigationController?.pushViewController(compatibleVC, animated: true)
    }
    
}
