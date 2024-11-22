//
//  ReviewCheckCell.swift
//  dailychallenge_day1
//
//  Created by directionsoft on 11/20/24.
//

let REVIEW_CHECK_OPTIONS: [String] = [
    "친절했어요",
    "정직하게 검차했어요",
    "일처리가 신속 정확해요",
    "약속을 잘 지켰어요",
    "자세한 설명을 해주셨어요",
    "기타"
]

import UIKit

private let SELECTED_CHECKBOX_IMAGE: String = "square"
private let DESELECTED_CHECKBOX_IMAGE: String = ""

class ReviewCheckCell: UITableViewCell {
    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var optionCheckBoxButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }
    
    private func initView() {
        
    }
    
    func updateUI(index: Int) {
        optionLabel.text = REVIEW_CHECK_OPTIONS[index]
    }
    
    func setSelectedState() {
        optionCheckBoxButton.
    }
    
    func setDeselectedState() {
        
    }
}
