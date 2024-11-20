//
//  ReviewWriteViewController.swift
//  dailychallenge_day1
//
//  Created by directionsoft on 11/20/24.
//

import UIKit

class ReviewWriteViewController: UIViewController {
    static func instance() -> ReviewWriteViewController {
        let vc = ReviewWriteViewController(nibName: "ReviewWriteViewController", bundle: nil)
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
