//
//  File.swift
//  GeoFence
//
//  Created by Rashod Qaim on 8/5/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import Foundation
import MapKit


func centerMapOnUserLocationForMapView(mapView: MKMapView) {
    if let coordinate = mapView.userLocation.location?.coordinate{
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 4000, 4000)
        mapView.setRegion(region, animated: true)
    }
}