//
//  ViewController.swift
//  DisplayUserLocation
//
//  Created by Dang Trung Hieu on 9/30/20.
//  Copyright © 2020 Dang Trung Hieu. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    // MARK: - Variables
    
    var locationManager: CLLocationManager!
    var mapView: MKMapView!
    
    // MARK: - UI Elements
    
    // MARK: - View LifeCycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLocationManager()
        configureMapView()
        enableLocationServices()
        centerMapOnUserLocation()
    }
    
    // MARK:- Helper Method
    
    func centerMapOnUserLocation() {
        guard let coordinate = locationManager.location?.coordinate else {return }
        let region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 2000, longitudinalMeters: 2000)
        mapView.setRegion(region, animated: true)
        
    }
    
    func configureLocationManager() {
        locationManager = CLLocationManager()
        locationManager.delegate = self
    }
    
    func configureMapView() {
        mapView = MKMapView()
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        view.addSubview(mapView)
        mapView.frame = view.frame
    }
    
    
    // MARK: - UI Actions
    
    // MARK: - Public Method
    
    // MARK: - Layouts
    
}

extension ViewController: CLLocationManagerDelegate {
    
    func enableLocationServices() {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            print("Location auth status is not determined")
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Location auth status is not restricted")
        case .denied:
            print("Location auth status is not denied")
        case .authorizedAlways:
            print("Location auth status is not authorizedAlways")
        case .authorizedWhenInUse:
            print("Location auth status is not authorizedWhenInUse")
        default:
            break
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
    }
}

