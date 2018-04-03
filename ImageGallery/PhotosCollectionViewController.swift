//
//  PhotosCollectionViewController.swift
//  ImageGallery
//
//  Created by Alumne on 3/4/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class PhotosCollectionViewController: UICollectionViewController {
    let photos = ["gato1", "gato2", "gato3", "gato4", "gato5", "gato6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
        cell.imageView.image = UIImage(named: photos[indexPath.row])
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            if let cell = sender as? PhotoCell {
                if let indexPath = collectionView?.indexPath(for: cell) {
                    detailViewController.imageToShow = UIImage(named: photos[indexPath.row])
                }
            }
        }
    }
}
