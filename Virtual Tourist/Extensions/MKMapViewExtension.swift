//
//  MKMapViewExtension.swift
//  UdacityVirtualTourist
//
//  Created by Jimit Raval on 24/04/20.
//  Copyright © 2020 Mango. All rights reserved.
//

import Foundation
import MapKit

extension MKMapView {

    
    func zoomOnCoordinates (coordinates: CLLocationCoordinate2D, zoomDistance: Int) {
        let locationDistance = CLLocationDistance(zoomDistance)
        let region = MKCoordinateRegion(center: coordinates, latitudinalMeters: locationDistance, longitudinalMeters: locationDistance)
        self.setRegion(region, animated: true)
    }
    
    func zoomOnRegion (region: MKCoordinateRegion) {
        self.setRegion(region, animated: true)
    }
    
}
