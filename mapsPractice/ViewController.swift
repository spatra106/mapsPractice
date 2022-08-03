//
//  ViewController.swift
//  mapsPractice
//
//  Created by Scholar on 8/2/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet private var MapView:
        MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let initialLocation =
        CLLocation (latitude:40.7128, longitude: 74.0060)
        
        MapView.centerToLocation(initialLocation)

        // Do any additional setup after loading the view.
        
    }
    private extension MKMapView {
      func centerToLocation(
        _ location: CLLocation,
        regionRadius: CLLocationDistance = 1000
      ) {
        let coordinateRegion = MKCoordinateRegion(
          center: location.coordinate,
          latitudinalMeters: regionRadius,
          longitudinalMeters: regionRadius)
        setRegion(coordinateRegion, animated: true)
      }
    }


}

