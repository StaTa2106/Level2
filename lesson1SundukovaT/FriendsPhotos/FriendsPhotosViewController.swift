//
//  FriendsPhotosViewController.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 09.12.2020.
//

import UIKit

class FriendsPhotosViewController: UICollectionViewController {
    
    var allPhotos = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return allPhotos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsPhotosViewCell", for: indexPath) as! FriendsPhotosViewCell
        //let friend = allFriends[indexPath.item]
        cell.icon.image = allPhotos[indexPath.row]
        
        return cell
    }
    
}
