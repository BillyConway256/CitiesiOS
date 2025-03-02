//
//  DetailViewController.swift
//  Cities
//
//  Created by Billy Conway on 3/2/25.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    // This will be set by MainViewController before segue
    var city: City?
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let city = city {
            cityLabel.text = "\(city.name), \(city.state)"
            descriptionLabel.text = city.description
            self.title = city.name
        }
    }
}
