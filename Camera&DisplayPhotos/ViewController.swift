//
//  ViewController.swift
//  Camera&DisplayPhotos
//
//  Created by scholar on 8/3/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //instance of image controller
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var imageDisplayed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }
    
    @IBAction func chooseFromLibraryTapped(_ sender: UIButton) {
        //image from photo library
        imagePicker.sourceType = .photoLibrary
        //present what is chosen from imagePicker
        //animated is true to make the transition slower
        //completion
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //replace placeholder with selected image
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { imageDisplayed.image = selectedImage}
        //make it visible
        imagePicker.dismiss(animated: true, completion: nil)
    }

}

