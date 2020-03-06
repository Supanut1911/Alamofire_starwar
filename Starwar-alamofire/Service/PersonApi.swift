//
//  PersonApi.swift
//  Starwar-alamofire
//
//  Created by Supanut Laddayam on 6/3/2563 BE.
//  Copyright © 2563 Supanut Laddayam. All rights reserved.
//

import Foundation
import Alamofire

typealias PersonResponseCompletion = (Person?) -> Void

class PersonApi {
    
    //alamofire & codale
    func getData(completion: @escaping PersonResponseCompletion) {
        guard let url = URL(string: "https://swapi.co/api/people/") else {return}
        AF.request(url).responseJSON { (response) in
            switch response.result {
            case .success(let value):print("hello")
                guard let data = response.data else {return completion(nil)}
                do {
                    let person = try JSONDecoder().decode(Person.self, from: data)
                    completion(person)
                } catch {
                    print(error.localizedDescription)
                }
                
            case .failure(let err):
                print(err.localizedDescription)
                completion(nil)
            }
        }
        
        
    }
}
