//
//  ViewController.swift
//  Starwar-alamofire
//
//  Created by Supanut Laddayam on 6/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var persons:Person?
    
    var arr = ["car", "cat"]
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        
        
    }
    
    func fetchData () {
        personApi.getData { (person) in
            if let person = person {
                self.persons = person
                print(">>>>\(self.persons?.results?[0].name)")
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }

        
        
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons?.results?.count ?? 0
//        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = self.persons?.results?[indexPath.row].name
//        cell.textLabel?.text = self.arr[in/dexPath.row]
        return cell
    }
    

}

