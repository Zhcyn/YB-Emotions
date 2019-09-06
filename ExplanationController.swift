//
//  ExplanationController.swift
//  EQ Playbook
//
//  Created by Cristian Moisei on 08/06/2018.
//  Copyright © 2018 Cristian Moisei. All rights reserved.
//

import UIKit

class ExplanationController: UIViewController {

    @objc func visualise(sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let visualiseVC = storyboard.instantiateViewController(withIdentifier: "VisualiseVC")
        navigationController?.pushViewController(visualiseVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Makes sure the Navigation Bar is shown.
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        // Adds a Visualise Button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "visualise"), style: .plain, target: self, action: #selector(visualise(sender:)))
    }

}
