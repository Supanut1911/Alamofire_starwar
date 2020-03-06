//
//  DetailVC.swift
//  Starwar-alamofire
//
//  Created by Supanut Laddayam on 6/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bdayLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var heighLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    
    
    
    var person: Result?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        self.nameLabel.text = person?.name
        self.eyeColorLabel.text = person?.eyeColor
        self.bdayLabel.text = person?.birthYear
        self.speciesLabel.text = person?.species?[0]
        self.heighLabel.text = person?.height
        self.massLabel.text = person?.mass
    }
    

    @IBAction func backDidtap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
