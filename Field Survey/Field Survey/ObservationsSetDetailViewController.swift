//
//  ObservationsSetDetailViewController.swift
//  Field Survey
//
//  Created by Robert Graman on 11/16/18.
//  Copyright © 2018 Robert Graman. All rights reserved.
//

import UIKit

class ObservationsSetDetailViewController: UIViewController {
//
    var observation: Observation?
    
    var dateFormatter = DateFormatter()
//
//    @IBOutlet weak var image: UIImageView!
//    @IBOutlet weak var name: UILabel!
//    @IBOutlet weak var dateLabel: UILabel!
//    @IBOutlet weak var descriptionText: UITextView!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Observation"
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        name.text=observation?.title
        descriptionText.text = observation?.description
        if let dateL = observation?.date{
            date.text = dateFormatter.string(from: dateL)
        }else{
            date.text=""
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
