import UIKit

class Spoon {
    
    let lock = NSLock()
    
    func pickUp(){
        lock.lock()
    }
    
    func putDown(){
        lock.unlock()
    }
    
}


class Developer {
    var leftSpoon: Spoon
    var rightSpoon: Spoon
    
    init(leftSpoon: Spoon, rightSpoon: Spoon){
        self.leftSpoon = leftSpoon
        self.rightSpoon = rightSpoon
    }
}
