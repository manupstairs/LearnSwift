
import Foundation

class BlockOperationSample1 {
    
    func blockOperationsTest1(){
        
        let operationQueue = OperationQueue()
        
        let operation1 : BlockOperation = BlockOperation (block: {
            self.doCalculations()
            
            let operation2 : BlockOperation = BlockOperation (block: {
                
                self.doSomeMoreCalculations()
                
            })
            operationQueue.addOperation(operation2)
        })
        operationQueue.addOperation(operation1)
    }
    
    private func doCalculations(){
        print("do Calculations")
        for i in 100...105{
            print("i in do calculations is \(i)")
            sleep(1)
        }
    }
    
    private func doSomeMoreCalculations(){
        print("do Some More Calculations")
        for j in 1...5{
            print("j in do some more calculations is \(j)")
            sleep(1)
        }
        
    }
}
