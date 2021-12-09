//
//  QuizViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var stream1View: UIView!
    @IBOutlet weak var stream2View: UIView!
    @IBOutlet weak var operatorView: UIView!
    @IBOutlet weak var resultView: UIView!

    @IBOutlet weak var stream1ImageView: UIImageView!
    @IBOutlet weak var stream2ImageView: UIImageView!
    @IBOutlet weak var operatorImageView: UIImageView!
    @IBOutlet weak var resultImageView: UIImageView!
    
    var operators = CreatingObservables.array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        guard let quizOperator = operators.randomElement() else { return }
        setQuestion(quizOperator: quizOperator)
    }
    
    private func setQuestion(quizOperator: Operator) {
        if let stream1 = quizOperator.stream1 {
            stream1ImageView.image = UIImage(named: stream1)
        }
        if let stream2 = quizOperator.stream2 {
            stream2ImageView.image = UIImage(named: stream2)
        }
        if let result = quizOperator.result {
            operatorImageView.image = UIImage(named: "operator_x.png")
            resultImageView.image = UIImage(named: result)
        }

        stream1View.isHidden = quizOperator.stream1 == nil
        stream2View.isHidden = quizOperator.stream2 == nil
        operatorView.isHidden = quizOperator.result == nil
        resultView.isHidden = quizOperator.result == nil
    }

}
