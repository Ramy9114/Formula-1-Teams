//
//  TableViewController.swift
//  Formula1Teams
//
//  Created by Rami Moubayed on 09/08/2020.
//  Copyright © 2020 Rami Moubayed. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: TableViewModel?
    var selectedTeam: Team?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        viewModel = TableViewModel()
        title = "Formula 1"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailViewController = segue.destination as? DetailViewController else{
            return
        }
        detailViewController.viewModel.team = selectedTeam
    }

}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let viewModel = viewModel else {
            return 0
        }
        return viewModel.getNumberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell") as? TableViewCell else{
            return UITableViewCell()
        }
        let team = viewModel?.teamAt(indexPath: indexPath)
        cell.configure(team)
        return cell
    }
    
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTeam = viewModel?.teamAt(indexPath: indexPath)
        let detailViewController = DetailViewController()
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
