//
//  TrialViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class TrialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pressedDiagramButton(_ sender: Any) {
        let quizStoryboard = UIStoryboard.init(name: "QuizView", bundle: nil)
        guard let quizVC = quizStoryboard.instantiateInitialViewController() as? QuizViewController else {
            return
        }
        navigationController?.pushViewController(quizVC, animated: true)
    }
}
