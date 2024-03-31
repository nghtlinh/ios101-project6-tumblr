//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Linh on 3/31/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var captionView: UITextView!
    
    @IBOutlet weak var posterImageView: UIImageView!
       
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let post = post {
            captionView.text = post.caption.trimHTMLTags()
            
            if let photo = post.photos.first {
                let url = photo.originalSize.url
                Nuke.loadImage(with: url, into: posterImageView)
            }
        } else {
            print("Error: Post is nil")
        }
        
        navigationItem.largeTitleDisplayMode = .never

    }
    
    var post: Post!

}
