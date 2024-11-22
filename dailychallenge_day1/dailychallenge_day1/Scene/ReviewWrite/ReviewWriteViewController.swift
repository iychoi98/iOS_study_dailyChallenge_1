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
    
    var selectedCheckIndex: Int = 0 // default: 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    private func initView() {
//        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
//         tap.cancelsTouchesInView = false
//         view.addGestureRecognizer(tap)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "ReviewWriteCell", bundle: nil), forCellReuseIdentifier: "ReviewWriteCell")
        tableView.register(UINib(nibName: "ReviewFeedbackCell", bundle: nil), forCellReuseIdentifier: "ReviewFeedbackCell")
        tableView.register(UINib(nibName: "ReviewCheckCell", bundle: nil), forCellReuseIdentifier: "ReviewCheckCell")
        
        tableView.reloadData()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
         view.endEditing(true)
   }
}

// MARK: - UITableViewDelegate, UITableViewDataSource
extension ReviewWriteViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return REVIEW_CHECK_OPTIONS.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewWriteCell", for: indexPath) as? ReviewWriteCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewFeedbackCell", for: indexPath) as? ReviewFeedbackCell else { return UITableViewCell() }
            cell.selectionStyle = .none
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewCheckCell", for: indexPath) as? ReviewCheckCell else { return UITableViewCell() }
            cell.updateUI(index: indexPath.row)
            cell.selectionStyle = .none
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 2 {
            selectedCheckIndex = indexPath.row
            tableView.reloadData()
        }
    }
}
