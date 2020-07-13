//
//  MapView.swift
//  flickGame
//
//  Created by okitsu teppei on 2020/07/13.
//  Copyright © 2020 okitsu teppei. All rights reserved.
//

import SwiftUI

import MapKit
struct MapView: UIViewRepresentable {
        func makeUIView(context: Context) -> MKMapView {
            MKMapView(frame: .zero)
        }
        
        func updateUIView(_ view: MKMapView, context: Context) {
            let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
            
            let span = MKCoordinateSpan(latitudeDelta: 40.0, longitudeDelta: 40.0)
            
            let region = MKCoordinateRegion(center: coordinate, span: span)
            
            view.setRegion(region, animated: true)
        }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
