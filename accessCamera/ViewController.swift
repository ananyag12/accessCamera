//
//  ViewController.swift
//  accessCamera
//
//  Created by scholar on 6/1/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagePicker.delegate = self
    }

    @IBAction func choosePhotoTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated:true, completion: nil)
        
    }
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageDisplay.image = selectedImage
    }
        imagePicker.dismiss(animated: true, completion: nil)
    }
}

