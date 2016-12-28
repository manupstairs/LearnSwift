import UIKit

class TestWeakKeyword {
    
    var str = "Hello, playground"
    
    func test1() {
        
        let count = CFGetRetainCount(self)
        print("in test1: \(count)")
        self.test2 { [weak self] result in
            self?.str = "in test2 callback"
            let count = CFGetRetainCount(self)
            print("in test2: \(count)")
            self?.test3 {  result in
                self?.str = "in test3 callback"
                let count = CFGetRetainCount(self)
                print("in test3: \(count)")
            }
        }
    }
    
    func test2(_ completion: (Bool) -> Void) {
        completion(true)
    }
    
    func test3(_ completion: (Bool) -> Void) {
        completion(true)
    }
}

class TestWeakKeyword2 {
    func test1() {}
}

let test = TestWeakKeyword()
test.test1()

let count = CFGetRetainCount(test)
print("out of TestWeakKeyword: \(count)")

let testkeyword2 = TestWeakKeyword2()
testkeyword2.test1()

let count2 = CFGetRetainCount(testkeyword2)
print("out of TestWeakKeyword2: \(count)")
