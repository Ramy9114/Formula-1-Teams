//
//  DetailViewController.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var carView: UIImageView!
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var driverOneView: UIImageView!
    @IBOutlet weak var driverTwoView: UIImageView!
    @IBOutlet weak var driverOneNameLabel: UILabel!
    @IBOutlet weak var driverTwoNameLabel: UILabel!
    @IBOutlet weak var driverOneNationalityImageView: UIImageView!
    @IBOutlet weak var driverTwoNationalityImageView: UIImageView!
    
    
    var viewModel = DetailViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        
    }
    
    private func configure(){
        carView.image = UIImage(named: viewModel.getCarImageName() ?? "renault")
        teamLabel.text = viewModel.getTeam()
        descriptionTextView.text = viewModel.team?.description
        driverOneNameLabel.text = viewModel.getDriver(index: 0)
        driverTwoNameLabel.text = viewModel.getDriver(index: 1)
        driverOneView.image = UIImage(named: viewModel.getDriverImageName(index: 0) ?? "rai")
        driverTwoView.image = UIImage(named: viewModel.getDriverImageName(index: 1) ?? "rai")
        driverOneNationalityImageView.image = UIImage(named: viewModel.getDriverNationality(index: 0) ?? "australia")
        driverTwoNationalityImageView.image = UIImage(named: viewModel.getDriverNationality(index: 1) ?? "australia")

        
        title = viewModel.team?.name
        
    }
}
