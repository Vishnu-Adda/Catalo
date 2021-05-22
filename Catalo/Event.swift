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

struct Item {
    public var storedTitle = "Title"
    public var storedDescription = "Description"
    public var storedLocation = "Location"
    public var storedPrice = "Price"
}

struct Borrow {
    public var storedName = "Name"
    public var storedTime = "Time (in hours)"
}

struct Backpack {
    public var storedPurpose = "Purpose"
    public var storedDescription = "Description"
    public var storedItems = "Items"
    public var storedDay = "Day"
}

var event = Event()
var location = Location()
var item = Item()
var borrow = Borrow()
var backpack = Backpack()

var locations = [Location]()
var locationChange = false

var items = [Item]()
var borrows = [Borrow]()
var backpacks = [Backpack]()
