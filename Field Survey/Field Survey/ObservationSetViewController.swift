//
//  ObservationSetViewController.swift
//  Field Survey
//
//  Created by Robert Graman on 11/16/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ObservationSetViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var observationTableView: UITableView!
    let colectionSet = ObservationLoader.load(jsonFileName: "fieldObservations")
    
    let dateFormater = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Field Survey"
        dateFormater.dateStyle = .medium
        dateFormater.timeStyle = .medium
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colectionSet.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ObservationCell", for: indexPath)
        if let cell = cell as? ObservationTableViewCell{
            let observation = colectionSet[indexPath.row]
            cell.icon.image = observation.classification.image
            cell.name.text = observation.title
            cell.dateLabel.text = dateFormater.string(from: observation.date)
        }
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ObservationsSetDetailViewController, let row = observationTableView.indexPathForSelectedRow?.row{
            
            destination.observation = colectionSet[row]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
