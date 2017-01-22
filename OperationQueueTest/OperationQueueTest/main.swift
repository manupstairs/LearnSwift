import Foundation

class OperationTest {
    
    func sampleCodeOne (){
        let operationQueue: OperationQueue = OperationQueue()
        let completionBlockOperation: BlockOperation = BlockOperation(
            block: {
                print("completion Block is getting called")
        }
        )
        
        let workerBlockOperation:BlockOperation = BlockOperation(
            block: {
                print("worker block")
                self.sampleCodeOneWorkerMethod()
        }
        )
        completionBlockOperation.addDependency(workerBlockOperation)
        operationQueue.addOperation(workerBlockOperation)
        operationQueue.addOperation(completionBlockOperation)
    }
    
    func sampleCodeOneWorkerMethod ()
    {
        print("Actual Worker Block")
        for i in 0 ..< 5 {
            print(i)
        }
        
    }
}

let test = OperationTest()
test.sampleCodeOne()

//let test1 = BlockOperationSample1()
//test1.blockOperationsTest1()

readLine(strippingNewline: true)

