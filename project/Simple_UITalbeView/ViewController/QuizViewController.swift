//
//  QuizViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet weak var quizProgressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var stream1View: UIView!
    @IBOutlet weak var stream2View: UIView!
    @IBOutlet weak var operatorView: UIView!
    @IBOutlet weak var resultView: UIView!

    @IBOutlet weak var stream1ImageView: UIImageView!
    @IBOutlet weak var stream2ImageView: UIImageView!
    
    
    @IBOutlet weak var operatorImageView: UIImageView!
    @IBOutlet weak var resultImageView: UIImageView!
    
    
    var operators = CreatingObservables.array
    var currentOperator:Operator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        title = "マーブルダイアグラム問題"
        setOperator()
        setQuestion()
    }
    
    @IBAction func operatorButtonPressed(_ sender: Any) {
        showAnswer()
    }
    
    private func showAnswer() {
        answerStack.isHidden = false
        answerLabel.text = currentOperator?.name
    }
    
    @IBAction func nextQuizButtonPressed(_ sender: Any) {
        answerStack.isHidden = true
        setOperator()
        setQuestion()
    }
    
    private func setOperator() {
        guard let quizOperator = operators.randomElement(),
              let selectedIndex = operators.firstIndex(where: { $0.name == quizOperator.name }) else { return }
        currentOperator = quizOperator
        operators.remove(at: selectedIndex)
    }
    
    private func setProgress() {
        let total = CreatingObservables.array.count
        let current = total - operators.count
        quizProgressView.progress = Float(Float(current)/Float(total))
        progressLabel.text = "\(current) / \(total)"
    }
    
    private func setQuestion() {
        answerStack.isHidden = true
        print(currentOperator?.name.lowercased() ?? "nil")
        guard let quizOperator = currentOperator else { return }
        stream1ImageView.image = quizOperator.images.stream1 ? UIImage(named: "stream1_" + quizOperator.name.lowercased() + ".png") : nil
        stream2ImageView.image = quizOperator.images.stream2 ? UIImage(named: "stream2_" + quizOperator.name.lowercased() + ".png") : nil
        operatorImageView.image = quizOperator.images.opreator ? UIImage(named: "operator_x.png") : nil
        resultImageView.image = quizOperator.images.result ? UIImage(named: "result_" + quizOperator.name.lowercased() + ".png") : nil
        // 表示
        stream1View.isHidden = !quizOperator.images.stream1
        stream2View.isHidden = !quizOperator.images.stream2
        operatorView.isHidden = !quizOperator.images.result
        resultView.isHidden = !quizOperator.images.result
    }
}
