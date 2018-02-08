//
//  PhotoDetailsViewController.swift
//  Lab1_Tumblr
//
//  Created by Honorio Vega on 2/5/18.
//  Copyright © 2018 Honorio Vega. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    var image: UIImage!

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
        imageView.isUserInteractionEnabled = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! FullScreenPhotoViewController
        
        vc.image = self.imageView.image
        
    }
    
    @IBAction func openModal(_ sender: UITapGestureRecognizer) {
        
        let vc = FullScreenPhotoViewController()
        vc.cookie = "watican"
        
        print("booi")
        performSegue(withIdentifier: "firstSegue", sender: nil)
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
