//
//  QuizViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var stream1ImageView: UIImageView!
    @IBOutlet weak var stream2ImageView: UIImageView!
    @IBOutlet weak var operatorImageView: UIImageView!
    @IBOutlet weak var resultImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let mockOperator = Operator(name: "", type: .creating, swiftCompatible: true, urlString: "")
        setQuestion(operator: mockOperator)
    }
    
    private func setQuestion(operator: Operator) {
        stream1ImageView.image = UIImage(named: "stream1_from.png")
        stream2ImageView.image = UIImage(named: "")
        operatorImageView.image = UIImage(named: "operator_x.png")
        resultImageView.image = UIImage(named: "result_from.png")

        stream1ImageView.isHidden = false
        stream2ImageView.isHidden = true
        operatorImageView.isHidden = false
        resultImageView.isHidden = false
    }

}
