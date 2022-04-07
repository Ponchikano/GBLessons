//
//  main.swift
//  3l_KondakovNikita
//
//  Created by Никита Кондаков on 03.04.2022.
//
//MARK: - легковые машины
import Foundation
///двигатель запущен или нет
enum engineStatus {
    case start, stop
}
///окно закрыто или открыто
enum windowsStatus {
    case open, closed
}
enum bagStatus {
    case empty, full
}
struct Car {
    let carBrand: String
    let releaseDate: Int
    var bagValume : Double {
        willSet {
            if (bagStatus == .empty) && (bagValume > 0) && (bagValume != 0) && (newValue < bagValume) {
                let space = bagValume - newValue
                print ("\(carBrand) bag free: \(space)")
             } else { print("Input error or \(carBrand) trunk is full.")}
        }
    }
    var engineStatus: engineStatus {
        willSet {
            if newValue == .start {
                print("\(carBrand) engin is on")
            } else { print("\(carBrand) engin is off")}
        }
    }
    var windowsStatus: windowsStatus {
        willSet {
            if newValue == .open {
                print("\(carBrand) windows are open")
            } else { print("\(carBrand) windows are closed")}
        }
    }
    var bagStatus: bagStatus
    mutating func emptyBag() {
        self.bagStatus = .empty
        print ("\(carBrand) bag is empty")
    }
}
//MARK: - грузовики
///состояние кабины, поднята или опущена
enum cabinStatus {
    case up, down
}
///состояние печки
enum heaterStatus {
    case on, off
}
///емкость с воздухом
enum tankOxygen {
    case empty, full
}
struct Truck {
    let TruckBrand: String
    let TruckReleaseDate: Int
    var OxygenValume : Double {
        willSet {
            if (tankOxygen == .empty) && (OxygenValume > 0) && (OxygenValume != 0) && (newValue < OxygenValume) {
                let space = OxygenValume - newValue
                print ("\(TruckBrand) bag free: \(space)")
             } else { print("Input error or \(TruckBrand) trunk is full.")}
        }
    }
    var heaterStatus: heaterStatus {
        willSet {
            if newValue == .on {
                print("\(TruckBrand) heater is on")
            } else { print("\(TruckBrand) heater is off")}
        }
    }
    var cabinStatus: cabinStatus {
        willSet {
            if newValue == .down {
                print("\(TruckBrand) cabin is up")
            } else { print("\(TruckBrand) cabin is down")}
        }
    }
    var tankOxygen: tankOxygen
    mutating func truckBody() {
        self.tankOxygen = .empty
        print ("\(TruckBrand) bag is empty")
    }
}

//MARK: - марка
var SportCarOne = Car(carBrand: "Ferrary", releaseDate: 2022, bagValume: 50, engineStatus: .start, windowsStatus: .open, bagStatus: .empty)
var SportCarTwo = Car(carBrand: "Skoda", releaseDate: 2020, bagValume: 60, engineStatus: .stop, windowsStatus: .closed, bagStatus: .empty)
var SportCarTree = Car(carBrand: "KIA", releaseDate: 2022, bagValume: 40, engineStatus: .start, windowsStatus: .open, bagStatus: .full)

var TruckOne = Truck(TruckBrand: "Volvo", TruckReleaseDate: 2015, OxygenValume: 500, heaterStatus: .on, cabinStatus: .up, tankOxygen: .empty)
var TruckTwo = Truck(TruckBrand: "MAN", TruckReleaseDate: 2017, OxygenValume: 800, heaterStatus: .off, cabinStatus: .down, tankOxygen: .full)
var TruckTree = Truck(TruckBrand: "Mersedes", TruckReleaseDate: 2019, OxygenValume: 750, heaterStatus: .on, cabinStatus: .up, tankOxygen: .empty)

SportCarOne.engineStatus = .start
SportCarOne.engineStatus = .stop
SportCarOne.windowsStatus = .open
SportCarOne.windowsStatus = .closed
SportCarOne.bagValume = 17
SportCarTwo.bagValume = 50
SportCarTree.bagValume = 10

TruckOne.cabinStatus = .down
TruckTwo.heaterStatus = .on
TruckTree.OxygenValume = 300
