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
    var objectOutput:AcronymObject?
    var acronymList = [String]() {
        didSet {
            print(acronymList)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    @IBAction func submitAction(_ sender: Any) {
        var list = [String]()
        MainControllerViewModel.fetchAPIData(key: .sf, value: "MI") { result in
            switch result {
            case .failure(let err):
                print("Err: \(err)")
            case .success(let data):
                self.objectOutput = try? JsonParser.parseData(data: data)
                for item in self.objectOutput![0].lfs {
                    list.append(item.lf)
                }
                self.acronymList = list
            }
        }
    }
    
}


