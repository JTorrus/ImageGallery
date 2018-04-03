//
//  DetailViewController.swift
//  ImageGallery
//
//  Created by Alumne on 3/4/18.
//  Copyright © 2018 Alumne. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var imageToShow: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = imageToShow {
            self.imageView.image = image
        }
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
