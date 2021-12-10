//
//  QuizViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/08.
//

import UIKit

class QuizCompatibleViewController: UIViewController {
    
    @IBOutlet weak var quizProgressView: UIProgressView!
    @IBOutlet weak var progressLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet weak var answerView: UIView!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var nextView: UIView!
    @IBOutlet weak var nextButton: UIButton!

    var operators:[Operator] = Operators.array.shuffled()
    var currentOperator:Operator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        title = "Swift対応オペレーター問題"
        setUI()
        setOperator()
        setProgress()
        setQuestion()
    }
    
    private func setUI() {
        showButton.fillStyle(color: .blue)
    }
    
    @IBAction func operatorButtonPressed(_ sender: Any) {
        showAnswer()
    }
    
    private func showAnswer() {
        showView.isHidden = true
        nextButton.isHidden = false
        answerView.isHidden = false
        let answer: String
        guard let cOperator = currentOperator else { return }
        if cOperator.swiftCompatible {
            answer = "Swiftに　「対応している」"
        } else {
            answer = "Swiftに　「非対応」"
        }
        answerLabel.text = answer
        if operators.isEmpty {
            nextButton.setTitle("終了", for: .normal)
        }
    }
    
    @IBAction func nextQuizButtonPressed(_ sender: Any) {
        showView.isHidden = false
        answerView.isHidden = true
        guard !operators.isEmpty else {
            showCompletionAlert()
            return
        }
        setOperator()
        setProgress()
        setQuestion()
    }
    
    private func setOperator() {
        // if random { operators.shuffled() }
        let operator1 = operators[0]
        currentOperator = operator1
        operators.remove(at: 0)
    }
    
    private func setProgress() {
        let total = Operators.array.count
        let current = total - operators.count
        quizProgressView.progress = Float(Float(current)/Float(total))
        progressLabel.text = "\(current) / \(total)"
    }
    
    private func setQuestion() {
        answerView.isHidden = true
        nextButton.isHidden = true
        guard let quizOperator = currentOperator else { return }
        questionLabel.text = "Swift に「 \(quizOperator.name) 」オペレーターは対応している"
    }
    
    private func showCompletionAlert() {
        let alert = UIAlertController(title: "完了しました", message: "お疲れ様でした。", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
