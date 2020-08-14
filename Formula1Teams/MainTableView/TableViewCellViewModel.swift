//
//  TableViewCellViewModel.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import Foundation

class TableViewCellViewModel{
//    var team: Team?
    
    func getName(_ team: Team?) -> String {
        guard let team = team else{
            return ""
        }
        return "\(team.name)"
    }
    
    func getTeamLogoName(_ team: Team?) -> String? {
        return team?.teamLogoImgName
    }
    
    
}
