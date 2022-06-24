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
        MainControllerViewModel.fetchAPIData(key: .sf, value: "MI") { result in
            switch result {
            case .failure(let err):
                print("Err: \(err)")
            case .success(let data):
                print("Data:\(data)")
            }
        }
        
//        guard let url = URLComponentConstants.createURLWithComponents(queryParameters: [URLQueryName.sf.rawValue:"MI"])?.url else {return}
//        NetworkingManager.shared.makeAPICall(url: url) { result in
//            
//        }
        

    }

    @IBAction func submitAction(_ sender: Any) {
        
    }
    
}

