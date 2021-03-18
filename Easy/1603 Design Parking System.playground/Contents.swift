import UIKit

/*
 Design a parking system for a parking lot. The parking lot has three kinds of parking spaces: big, medium, and small, with a fixed number of slots for each size.

 Implement the ParkingSystem class:

 ParkingSystem(int big, int medium, int small) Initializes object of the ParkingSystem class. The number of slots for each parking space are given as part of the constructor.
 bool addCar(int carType) Checks whether there is a parking space of carType for the car that wants to get into the parking lot. carType can be of three kinds: big, medium, or small, which are represented by 1, 2, and 3 respectively. A car can only park in a parking space of its carType. If there is no space available, return false, else park the car in that size space and return true.
 
 */

//Runtime: 156 ms, faster than 99.15% of Swift online submissions for Design Parking System.
//Memory Usage: 14.9 MB, less than 46.61% of Swift online submissions for Design Parking System.

    class ParkingSystem {
    
    private var slots = [Int](repeating: 0, count: 3)

    init(_ big: Int, _ medium: Int, _ small: Int) {
        slots[0] = big
        slots[1] = medium
        slots[2] = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        let index = carType - 1
        slots[index] -= 1
        return slots[index] >= 0
    }
}
