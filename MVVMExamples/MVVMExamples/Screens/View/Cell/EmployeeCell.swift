//
//  EmployeeCell.swift
//  MVVMExamples
//
//  Created by Hasan Basri Komser on 29.11.2022.
//

import UIKit

class EmployeeCell: UITableViewCell {
    
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    class var identifier: String { return String(describing: self) }
    class var nib: UINib { return UINib(nibName: identifier, bundle: nil) }

    var cellViewModel: EmployeeCellViewModel? {
        didSet {
            idLabel.text = cellViewModel?.id
            nameLabel.text = cellViewModel?.name
            salaryLabel.text = cellViewModel?.salary
            ageLabel.text = cellViewModel?.age
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        initView()
    }

    func initView() {
        // Cell view customization
        backgroundColor = .clear

        // Line separator full width
        preservesSuperviewLayoutMargins = false
        separatorInset = UIEdgeInsets.zero
        layoutMargins = UIEdgeInsets.zero
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        idLabel.text = nil
        nameLabel.text = nil
        salaryLabel.text = nil
        ageLabel.text = nil
    }
}
