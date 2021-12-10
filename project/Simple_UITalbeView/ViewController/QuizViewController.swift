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
    
    
    @IBOutlet weak var showView: UIView!
    @IBOutlet weak var showButton: UIButton!
    
    @IBOutlet weak var answerView: UIView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    var operators:[Operator] = Operators.array.filter({ $0.swiftCompatible })
    var currentOperator:Operator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        title = "マーブルダイアグラム問題"
        setOperator()
        setProgress()
        setQuestion()
    }
    
    @IBAction func operatorButtonPressed(_ sender: Any) {
        showAnswer()
    }
    
    private func showAnswer() {
        showView.isHidden = true
        answerView.isHidden = false
        answerLabel.text = currentOperator?.name
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
        guard let quizOperator = operators.randomElement(),
              let selectedIndex = operators.firstIndex(where: { $0.name == quizOperator.name }) else { return }
        let operator1 = operators[0]
        currentOperator = operator1 //quizOperator
        operators.remove(at: 0) // selectedIndex)
    }
    
    private func setProgress() {
        let total = Operators.array.filter({ $0.swiftCompatible }).count
        let current = total - operators.count
        quizProgressView.progress = Float(Float(current)/Float(total))
        progressLabel.text = "\(current) / \(total)"
    }
    
    private func setQuestion() {
        answerView.isHidden = true
        print(currentOperator?.name.lowercased() ?? "nil")
        guard let quizOperator = currentOperator,
              let images = quizOperator.images else { return }
        var name = quizOperator.name.lowercased()
        if name.contains("(") {
            let compart = name.split(separator: "(")
            name = String(compart[0])
        }
        let fileName = name + ".png"
        stream1ImageView.image = images.stream1 ? UIImage(named: "stream1_" + fileName) : nil
        stream2ImageView.image = images.stream2 ? UIImage(named: "stream2_" + fileName) : nil
        operatorImageView.image = images.opreator ? UIImage(named: "operator_x.png") : nil
        resultImageView.image = images.result ? UIImage(named: "result_" + fileName) : nil
        // 表示
        stream1View.isHidden = !images.stream1
        stream2View.isHidden = !images.stream2
        operatorView.isHidden = !images.result
        resultView.isHidden = !images.result
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
