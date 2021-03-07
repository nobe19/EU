//
//  ListTableViewCell.swift
//  EU
//
//  Created by Nipuni Obe on 3/7/21.
//

import UIKit

protocol ListTableViewCellDelegate: class {
    func euroButtonToggled(sender: ListTableViewCell)
}

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var euroButton: UIButton!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    
    weak var delegate: ListTableViewCellDelegate?
    
    var nation: Nation! {
        didSet {
            countryLabel.text = nation.country
            capitalLabel.text = "Capital: \(nation.capital)"
            euroButton.isSelected = nation.usesEuro
            
        }
    }
    
    @IBAction func euroTapped(_ sender: UIButton) {
        delegate?.euroButtonToggled(sender: self)
    }
    
}
