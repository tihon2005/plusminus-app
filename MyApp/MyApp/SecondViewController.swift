//
//  SecondViewController.swift
//  MyApp
//
//  Created by Tikhon Bazar on 5.02.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var textOfLabel : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.font = UIFont.boldSystemFont(ofSize: 25)
        numberLabel.text = textOfLabel
    }

    @IBAction func minusTapped(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) - 1)
    }
    @IBAction func plusTapped(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) + 1)
    }
    @IBAction func multButton(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) * 4)
    }
    @IBAction func divideButton(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) / 4)
    }
    @IBAction func clearButton(_ sender: UIButton) {
        numberLabel.text = "0"
    }
}
