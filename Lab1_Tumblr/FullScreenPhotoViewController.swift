//
//  FullScreenPhotoViewController.swift
//  Lab1_Tumblr
//
//  Created by Honorio Vega on 2/7/18.
//  Copyright © 2018 Honorio Vega. All rights reserved.
//

import UIKit

class FullScreenPhotoViewController: UIViewController,
UIScrollViewDelegate{
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    var cookie : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
       // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dismissModal(_ sender: UIButton) {
        
        self.presentingViewController?.dismiss(animated: false, completion:nil)

    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
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
