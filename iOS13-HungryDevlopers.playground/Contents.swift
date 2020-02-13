import UIKit

// Create a class called Spoon. It should have two methods, pickUp() and putDown().
class Spoon {
    
    let lock = NSLock()
    
    // You can implement this with a private lock property
    func pickUp(){
        lock.lock()
    }
    
    func putDown(){
        lock.unlock()
    }
    
}

//Create a class called Developer. Each Developer should have a leftSpoon property and a rightSpoon property. It should also have think(), eat(), and run() methods.
class Developer {
    
    let lock = NSLock()
    
    var leftSpoon: Spoon
    var rightSpoon: Spoon
    
    init(leftSpoon: Spoon, rightSpoon: Spoon){
        self.leftSpoon = leftSpoon
        self.rightSpoon = rightSpoon
    }
    
    //think() should pick up both spoons before returning.
    func think(){
         leftSpoon
         rightSpoon
    }
    
    //eat() should pause for a random amount of time before putting both spoons down.
    func eat(){
        print("now we are eating")
        usleep(1__00__00)
        rightSpoon.putDown()
        leftSpoon.putDown()
    }
    
    //Developer.run() should call think() then eat() over and over again forever.
    func run(){
        while true {
        think()
        eat()
        }
    }
}



//let num = 5
//
//var developers: [Developer] = []
//var spoons: [Spoon] = []
//for int in 0..<num {
//    spoons.append(Spoon(index: int))
//}
//
//for int in 0..<num {
//    if int == 0 {
//        developers.append(Developer(left: spoons[num-1], right: spoons[int+1]))
//    } else if int == 4 {
//        developers.append(Developer(left: spoons[int-1], right: spoons[0]))
//    } else {
//        developers.append(Developer(left: spoons[int-1], right: spoons[int+1]))
//    }
//}
//
//DispatchQueue.concurrentPerform(iterations: 5) {
//    developers[$0].run()
//}
