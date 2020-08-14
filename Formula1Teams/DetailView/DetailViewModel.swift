//
//  DetailViewModel.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import Foundation


class DetailViewModel {
    
    var team: Team?
    
    func getCarImageName() -> String? {
        return team?.carImgName
    }
    
    func getTeam() -> String {
        guard let team = team else{
            return ""
        }
        return "\(team.name)"
    }
//
    func getDriver(index: Int) -> String {
        guard let team = team else{
            return ""
        }
        return "\(team.drivers[index].name) "
    }
    
    func getDriverImageName(index: Int) -> String? {
            return team?.drivers[index].driverImageName
        }
    
    func getDriverNationality(index: Int) -> String? {
        return team?.drivers[index].nationality
    }
    
    
    
}
