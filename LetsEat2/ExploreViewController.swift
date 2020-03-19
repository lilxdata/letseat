//
//  ExploreViewController.swift
//  LetsEat2
//
//  Created by madi on 3/18/20.
//  Copyright © 2020 madi. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    /* IBOutlet is a way to connect to the UI element
     We have a Collection View on our UIViewController so now we are creating the variable that allows us to hook into it */
    @IBOutlet weak var collectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
