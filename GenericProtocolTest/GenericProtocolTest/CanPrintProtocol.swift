
import Foundation

protocol CanPrint {
    
    associatedtype E
    
    func PrintType(output: E) -> Void
}

class CanPrintBase<T> {
    func PrintType(output: T) -> Void {}
}


public class SomeType {}

class TypePrinter0 : CanPrint{
    
    typealias E = String
    
    func PrintType(output: E) {
        print(type(of:output))
    }
}

//class TypePrinter1<E: String> : CanPrint{
//   
//    func PrintType(output: E) {
//        print(output)
//    }
//}

class TypePrinter2<E: SomeType> : CanPrint{

    func PrintType(output: E) {
        print(output)
    }
}

class TypePrinter4<E> : CanPrint{
    
    func PrintType(output: E) {
        print(output)
    }
}

class TypePrinter3: CanPrintBase<String>{
    
    override func PrintType(output: String){
         print(type(of:output))
    }
}
