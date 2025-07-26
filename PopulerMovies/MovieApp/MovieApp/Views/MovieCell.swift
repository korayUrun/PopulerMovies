//
//  MovieCell.swift
//  MovieApp
//
//  Created by Koray Urun on 22.07.2025.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet var moviePhotoView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
