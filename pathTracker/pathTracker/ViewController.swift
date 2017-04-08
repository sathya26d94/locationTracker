//
//  ViewController.swift
//  pathTracker
//
//  Created by SaTHYa on 06/04/17.
//  Copyright © 2017 SaTHYa. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var Map: MKMapView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    var swiftState: Bool = false
    var manager:CLLocationManager!
    var myLocations: [CLLocation] = []
    var timeAtStart: NSDate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        Map.delegate = self
        Map.mapType = MKMapType.Hybrid
        Map.showsUserLocation = true
        startButton.setStartTheme()
        stopButton.setStopTheme()
    }
    
    func locationManager(manager:CLLocationManager, didUpdateLocations locations:[CLLocation]) {
        myLocations.append(locations[0] )
        let spanX = 0.007
        let spanY = 0.007
        let newRegion = MKCoordinateRegion(center: Map.userLocation.coordinate, span: MKCoordinateSpanMake(spanX, spanY))
        Map.setRegion(newRegion, animated: true)
        if swiftState && myLocations.count > 2 {
            let sourceIndex = myLocations.count - 1
            let destinationIndex = myLocations.count - 2
            let c1 = myLocations[sourceIndex].coordinate
            let c2 = myLocations[destinationIndex].coordinate
            var a = [c1, c2]
            let polyline = MKPolyline(coordinates: &a, count: a.count)
            Map.addOverlay(polyline)
        }
    }
    
    @IBAction func startpressed(sender: AnyObject) {
        if (!swiftState) {
            myLocations = []
            timeAtStart = NSDate()
            swiftState = true
        }
    }
    
    @IBAction func stopPressed(sender: AnyObject) {
        if (swiftState) {
            swiftState = false
            let alert = UIAlertController(title: "Duration", message: NSDate().offsetFrom(timeAtStart), preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default)
                { action -> Void in
                    let overlays = self.Map.overlays
                    self.Map.removeOverlays(overlays)
                })
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolyline {
            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
            polylineRenderer.strokeColor = UIColor.blueColor()
            polylineRenderer.lineWidth = 4
            return polylineRenderer
        }
        return MKOverlayRenderer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension NSDate {
    
    func offsetFrom(date:NSDate) -> String {
        
        let dayHourMinuteSecond: NSCalendarUnit = [.Day, .Hour, .Minute, .Second]
        let difference = NSCalendar.currentCalendar().components(dayHourMinuteSecond, fromDate: date, toDate: self, options: [])
        let seconds = "\(difference.second)s"
        let minutes = "\(difference.minute)m" + " " + seconds
        let hours = "\(difference.hour)h" + " " + minutes
        let days = "\(difference.day)d" + " " + hours
        if difference.day    > 0 { return days }
        if difference.hour   > 0 { return hours }
        if difference.minute > 0 { return minutes }
        if difference.second > 0 { return seconds }
        return ""
    }
    
}

extension UIButton {
    
    func setStartTheme() {
        titleLabel?.text = "Start"
        titleLabel?.font = UIFont (name: "HelveticaNeue", size: 14)
        backgroundColor = UIColor.greenColor()
        applyCircleRadius()
    }
    
    func setStopTheme() {
        titleLabel?.text = "Stop"
        titleLabel?.font = UIFont (name: "HelveticaNeue", size: 14)
        backgroundColor = UIColor.redColor()
        applyCircleRadius()
    }
    
    func applyCircleRadius() {
        clipsToBounds = true
        layer.cornerRadius = frame.size.width/2
    }

}