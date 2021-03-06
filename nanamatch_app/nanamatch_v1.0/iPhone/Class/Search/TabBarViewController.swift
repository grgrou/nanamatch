//
//  TabBarViewController.swift
//  nanamatch_v1.0
//
//  Created by Alumno-DG on 26/06/18.
//  Copyright © 2018 Ernesto Gaspard. All rights reserved.
//

import UIKit

protocol TabBarViewControllerDelegate {
    func tabBarViewController(tabBarViewController: TabBarViewController, TransitionWillStart state: Bool)
}
class TabBarViewController: UIViewController {
    
    var delegate: TabBarViewControllerDelegate?
    
    @IBAction func moreDetailsAction(_ sender: UIButton) {
        self.delegate?.tabBarViewController(tabBarViewController: self, TransitionWillStart: true)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
