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
    
    var personApi = PersonApi()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        
        
    }
    
    func fetchData () {
        personApi.getData { (person) in
            
            if let person = person {
                self.persons = person
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }

        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as? DetailVC
        let person = sender as! Any as? Result
        vc?.person = person
        
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons?.results?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = self.persons?.results?[indexPath.row].name

        return cell
    }
    

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PersonDetail", sender: persons?.results?[indexPath.row])
    }
}
