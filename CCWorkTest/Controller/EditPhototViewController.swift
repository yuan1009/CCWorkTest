//
//  EditPhototViewController.swift
//  CCWorkTest
//
//  Created by mac on 2021/8/10.
//

import UIKit

class EditPhototViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var editPhotoImageView: UIImageView!
    
    var photoImage: UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        editPhotoImageView.image = photoImage

        // Do any additional setup after loading the view.
    }
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        editPhotoImageView.image = info[.originalImage] as? UIImage
//
//        picker.dismiss(animated: true, completion: nil)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
