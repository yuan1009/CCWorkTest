//
//  CameraViewController.swift
//  CCWorkTest
//
//  Created by mac on 2021/8/9.
//

import UIKit

class CameraViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var photoImage: UIImageView!
    var frameImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        photoImage.image = image
//        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        picker.dismiss(animated: true, completion: nil)
//        performSegue(withIdentifier: "go to edit photo", sender: image)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "go to edit photo" {
//            if let EditVC = segue.destination as? EditPhototViewController {
//                EditVC.photoImage = sender as? UIImage
//            }
//        }
//    }
    @IBAction func cameraButton(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .camera
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
   
    @IBAction func addFrame(_ sender: UITapGestureRecognizer) {

        frameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 520))
        frameImageView.image = UIImage(named: "frame-circle@4500x4500")
        photoImage.addSubview(frameImageView)
        
    }
    @IBAction func addFrameTwo(_ sender: UITapGestureRecognizer) {
        frameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 520))
        frameImageView.image = UIImage(named: "frame-film")
        photoImage.addSubview(frameImageView)
    }
    
    @IBAction func addFrameThree(_ sender: UITapGestureRecognizer) {
        frameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 520))
        frameImageView.image = UIImage(named: "frame-flower@4500x4500")
        photoImage.addSubview(frameImageView)
    }
    
    @IBAction func addFrameFour(_ sender: UITapGestureRecognizer) {
        frameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 520))
        frameImageView.image = UIImage(named: "frame-lace@4500x4500")
        photoImage.addSubview(frameImageView)
    }
    @IBAction func addFrameFive(_ sender: UITapGestureRecognizer) {
        frameImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 414, height: 520))
        frameImageView.image = UIImage(named: "frame-wood@4500x4500")
        photoImage.addSubview(frameImageView)
    }
    @IBAction func load(_ sender: UIButton) {
        let renderer = UIGraphicsImageRenderer(size: photoImage.bounds.size)
        let editPhotoView = renderer.image { (UIGraphicsImageRendererContext) in
            photoImage.drawHierarchy(in: photoImage.bounds, afterScreenUpdates: true)
        }
        let activityViewController = UIActivityViewController(activityItems: [editPhotoView], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
        
    }
    
    @IBAction func clear(_ sender: UIButton) {
        if photoImage == nil {
            return
        }else {
            photoImage.image = .none
        }
        if frameImageView == nil {
            return
        }else {
            frameImageView.image = .none
        }
                }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
