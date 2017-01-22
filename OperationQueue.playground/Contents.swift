import Foundation

var queue = OperationQueue()

queue.addOperation { () -> Void in
    usleep(4)
    print("1")
}

queue.addOperation { () -> Void in
    usleep(3)
    print("2")
}

queue.addOperation { () -> Void in
    usleep(2)
    print("3")}

queue.addOperation { () -> Void in
    usleep(1)
    print("4")
}

queue = OperationQueue()
let operation1 = BlockOperation(block: {
    print("operation1")
    OperationQueue.main.addOperation({
        print("operation1 addOperation")
    })
})

operation1.completionBlock = {
    print("Operation 1 completed")
}
queue.addOperation(operation1)

let operation2 = BlockOperation(block: {
    print("operation2")
    OperationQueue.main.addOperation({
        print("operation2 addOperation")
    })
})

operation2.completionBlock = {
    print("Operation 2 completed")
}
queue.addOperation(operation2)

