//
//  HomeViewController.swift
//  CodeRefinery
//
//  Created by Kunal More on 10/04/24.
//

import UIKit

class HomeViewController: UIViewController {

    let viewModel: HomeViewModel = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetchFromAPI()
    }

}
