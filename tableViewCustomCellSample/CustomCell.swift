//
//  CustomCell.swift
//  tableViewCustomCellSample
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func update(updateCell: IndexPath) {
        self.icon.image = UIImage(named: "icon_image.jpg")
        self.title.text = "Love Coffee Life"
    }
    
}
