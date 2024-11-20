//
//  ViewController.swift
//  dailychallenge_day1
//
//  Created by directionsoft on 11/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTappedReviewWriteButton(_ sender: UIButton) {
        let vc = ReviewWriteViewController.instance()
        present(vc, animated: true)
    }
}

