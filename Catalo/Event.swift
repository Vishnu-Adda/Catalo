//
//  Event.swift
//  Catalo
//
//  Created by Adda on 5/21/21.
//

import Foundation

struct Event {
    public var storedTitle = "Title"
    public var storedTime = "Time (in hours)"
    public var storedDesc = "Description"
    public var storedPack = "Backpack"
}

struct Location {
    public var storedTitle = "Title"
    public var storedDescription = "Description"
    public var storedCity = "City"
    public var storedState = "State"
    public var storedStreet = "Street"
}

var event = Event()
var location = Location()

var locations = [Location]()
var locationChange = false
