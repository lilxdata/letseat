//
//  ExploreViewController.swift
//  LetsEat2
//
//  Created by madi on 3/18/20.
//  Copyright © 2020 madi. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDataSource {


    /* IBOutlet is a way to connect to the UI element
    // We have a Collection View on our UIViewController so now we are creating the variable that allows us to hook into it */
    @IBOutlet weak var collectionView:UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /* Add a header to Collection View */
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath ) ->  UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return  headerView
    }
    
    /* Tell our collection view that we only want 1 section to display */
    func  numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    /* Tell our collection view we want to display 20 items */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    /* Create a cell everytime collectionView(_: numberOfItemsInSection:) is called */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath)
    }
    
    /* Dismiss modal when cancel button is clicked */
    @IBAction func unwindLocationCancel(segue:UIStoryboardSegue) {}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
