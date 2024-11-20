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

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
        tableView.delegate = self
        tableView.dataSource = self
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ReviewWriteViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
