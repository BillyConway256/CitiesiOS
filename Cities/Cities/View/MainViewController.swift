//
//  ViewController.swift
//  Cities
//
//  Created by Billy Conway on 3/2/25.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    // Our data source
    private let cities = CityData.cities

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
        
        // Set a title for the view
        self.title = "Cities"
    }
    
    //  UITableViewDataSource Methods
    
    // Return the number of rows (one for each city)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    // Configure each cell with city information
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Dequeue a reusable cell with the identifier "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let city = cities[indexPath.row]
        cell.textLabel?.text = "\(city.name), \(city.state)"
        
        return cell
    }
    
    //  Navigation
    
    // This method is automatically called before the segue is performed
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            // When using an automatic segue, sender is the cell that was tapped.
            if let cell = sender as? UITableViewCell,
               let indexPath = tableView.indexPath(for: cell) {
                
                let selectedCity = cities[indexPath.row]
                
                // Cast the destination to your DetailViewController and pass the selected city.
                if let detailVC = segue.destination as? DetailViewController {
                    detailVC.city = selectedCity
                }
            }
        }
    }
}


