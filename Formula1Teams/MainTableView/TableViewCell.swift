//
//  TableViewCell.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var teamLogo: UIImageView!
    
    var viewModel: TableViewCellViewModel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewModel = TableViewCellViewModel()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ team: Team?){
        guard let team = team else{
            return
        }
        nameLabel.text = viewModel?.getName(team)
        teamLogo.image = UIImage(named: viewModel?.getTeamLogoName(team) ?? "renaultLogo")
//        ratingLabel.text = viewModel?.getRating(film)
    }

}
