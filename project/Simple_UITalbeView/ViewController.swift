//
//  ViewController.swift
//  Simple_UITalbeView
//
//  Created by Hajime Taniguchi on 2021/12/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            let operatorCell = UINib(nibName: "OperatorCell", bundle: nil)
            tableView.register(operatorCell, forCellReuseIdentifier: "OperatorCell")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let navigationController = navigationController
        let selectedOperator = OperatorData.array[indexPath.row]
        let detailStoryboard = UIStoryboard.init(name: "DetailView", bundle: nil)
        guard let detailVC = detailStoryboard.instantiateInitialViewController() as? DetailViewController else {
            return
        }
        detailVC._operator = selectedOperator
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OperatorData.array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "OperatorCell", for: indexPath) as? OperatorCell else {
            return UITableViewCell()
        }
        let data = OperatorData.array[indexPath.row]
        cell.bind(data: data)
        return cell
    }
}
