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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let mockOperator = Operator(name: "", type: .creating, stream1: nil, stream2: nil, result: nil, swiftCompatible: true, urlString: "")
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
        
        stream1View.isHidden = false
        stream2View.isHidden = true
        operatorView.isHidden = false
        resultView.isHidden = false
    }

}
