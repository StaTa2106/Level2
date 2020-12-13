//
//  FriendsPhotosViewController.swift
//  lesson1SundukovaT
//
//  Created by Татьяна Сундукова on 09.12.2020.
//

import UIKit

class FriendsPhotosViewController: UICollectionViewController {
    var friend: Users!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // title = friend.name
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return friend.photo.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsPhotosViewCell", for: indexPath) as! FriendsPhotosViewCell
        let photo = friend.photo [indexPath.row]
        cell.icon.image = photo
        return cell
    }
    
}
