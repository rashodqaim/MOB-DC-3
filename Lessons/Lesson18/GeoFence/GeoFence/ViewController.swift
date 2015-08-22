//
//  ViewController.swift
//  GeoFence
//
//  Created by LOANER on 8/2/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, AddFenceDelegate {
    
    let fenceStore = FenceStore.sharedStore
    var fences = [Fence]() {
        didSet {
            self.navigationItem.title = "Geo fences (\(fences.count))"
        }
    }

    @IBOutlet weak var MapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get fences from core data
        fences = fenceStore.getAllFences()
        
        for fence in fences {
            MapView.addAnnotation(fence)
            addRadiusOverLayForFence(fence)
        }
    }

    @IBAction func locateMe(sender: UIBarButtonItem) {
        centerMapOnUserLocationForMapView(MapView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAdd" {
            let destinationVC = segue.destinationViewController as! UINavigationController
            let addVC = destinationVC.topViewController as! AddViewController
            
            addVC.delegate = self
        }
    }
    
    func addFenceWithCoordinate(coordinate: CLLocationCoordinate2D,
        radius: Double, note: String, uuid: String, eventType: EventType) {
            var newFence = fenceStore.addFence(coordinate, uuid: uuid, radius: radius,
                fireMoment: eventType, note: note)
            
            MapView.addAnnotation(newFence)
            
            fences.append(newFence)
            
            addRadiusOverLayForFence(newFence)
    }

    func addRadiusOverLayForFence(fence: Fence){
        MapView.addOverlay(MKCircle(centerCoordinate: fence.coordinate, radius: fence.radius))
    }
    
    func mapView(mapView: MKMapView!, rendererforOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        if overlay is MKCircle {
            var circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.lineWidth = 1.0
            circleRenderer.strokeColor = UIColor.purpleColor()
            circleRenderer.fillColor = UIColor.purpleColor().colorWithAlphaComponent(0.4)
            return circleRenderer
        }
        return nil
    }
    func mapView(mapView: MKMapView!, viewforAnnotation annotation: MKAnnotation!) -> MKAnnotation {
        if annotation is Fence {
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier("fenceAnnoation")
            if annotationView == nil {
                annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "fenceAnnoation")
                
                let removeButton = UIButton.buttonWithType(.Custom) as! UIButton
                removeButton.frame = CGRectMake(0, 0, 23, 23)
                
                
                
                annotationView.canShowCallout = true
                
                
            }
        }
};