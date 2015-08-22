//
//  ViewController.swift
//  Locals
//
//  Created by Rashod Qaim on 8/5/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManageer = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManageer.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }



    @IBAction func findMe(sender: UIBarButtonItem) {
        locationManageer.requestWhenInUseAuthorization()
        
        locationManageer.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManageer.startUpdatingLocation()
    }
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        centerMapOnUserLocationForMapView(mapView)
        println("new location lat: \(newLocation.coordinate.latitude), long: \(newLocation.coordinate.longitude)")
        
        CLGeocoder().reverseGeocodeLocation(newLocation, completionHandler: {(results, error) -> Void in
            println(results)
            
            if error != nil {
                println("error")
                return
            }
            if results.count > 0 {
                let place = results [0] as! CLPlacemark
                println("we found you at \(place.thoroughfare) \(place.locality)")
            }
            
        
        self.locationManageer.stopUpdatingLocation()
    })

}
    func centerMapOnUserLocationForMapView(mapView: MKMapView) {
        if let coordinate = mapView.userLocation.location?.coordinate{
            let region = MKCoordinateRegionMakeWithDistance(coordinate, 4000, 4000)
            mapView.setRegion(region, animated: true)
        }
    }
}