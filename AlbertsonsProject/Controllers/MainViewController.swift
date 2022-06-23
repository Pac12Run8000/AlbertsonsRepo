//
//  ViewController.swift
//  AlbertsonsProject
//
//  Created by Michelle Grover on 6/18/22.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var acronymLabel: UITextField!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
//        print(URLComponentConstants.createURLWithComponents(queryParameters: [URLQueryName.sf.rawValue:"MA"]))
        
        do {
       var valid = try "5432&&#??".validCharactersForAcronymAPICall()
            print(valid)
        } catch {
            print(error)
        }
    }

    @IBAction func submitAction(_ sender: Any) {
        
    }
    
}

