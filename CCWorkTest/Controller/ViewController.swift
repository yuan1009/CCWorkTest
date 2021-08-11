//
//  ViewController.swift
//  CCWorkTest
//
//  Created by mac on 2021/8/9.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var latitude: UILabel!
    @IBOutlet weak var longitude: UILabel!
    
    var locationManager: CLLocationManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.requestWhenInUseAuthorization()
        if let coordinate = locationManager?.location?.coordinate {
            let xScale: CLLocationDegrees = 0.01
            let yScale: CLLocationDegrees = 0.01
            let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: yScale, longitudeDelta: xScale)
            let region = MKCoordinateRegion(center: coordinate, span: span)
            
            map.setRegion(region, animated: true)
            
            latitude.text = "緯度: \(coordinate.latitude)"
            longitude.text = "經度: \(coordinate.longitude)"
        }
        
                
    }
    
    


}

