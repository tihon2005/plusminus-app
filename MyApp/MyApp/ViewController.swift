//
//  ViewController.swift
//  MyApp
//
//  Created by Tikhon Bazar on 1.02.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.font = UIFont.boldSystemFont(ofSize: 25)
        numberLabel.text = "0"
    }

    @IBAction func plusTapped(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) + 1)
    }
    
    @IBAction func minusTapped(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) - 1)
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) / 2)
    }
    @IBAction func multButton(_ sender: UIButton) {
        numberLabel.text = String((Double(numberLabel.text ?? "0") ?? 0) * 2)
    }
    @IBAction func clearButton(_ sender: UIButton) {
        numberLabel.text = "0"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC : SecondViewController = segue.destination as! SecondViewController
        destinationVC.textOfLabel = numberLabel.text!
    }
}

