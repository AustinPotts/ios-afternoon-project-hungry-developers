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
        usleep(1)
        rightSpoon.putDown()
        leftSpoon.putDown()
    }
    
    //Developer.run() should call think() then eat() over and over again forever.
    func run(){
        think()
        eat()
    }
}
