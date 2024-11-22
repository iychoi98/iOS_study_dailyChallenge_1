//
//  ReviewWriteCell.swift
//  dailychallenge_day1
//
//  Created by directionsoft on 11/20/24.
//

import UIKit

class ReviewWriteCell: UITableViewCell {
    @IBOutlet weak var starRateStackView: UIStackView!
    @IBOutlet weak var reviewWriteTextField: UITextField!
    
    // textField 다른 곳 터치 시 키보드 닫기
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    private func initView() {
        reviewWriteTextField.contentVerticalAlignment = .top
        
        
    }
}
