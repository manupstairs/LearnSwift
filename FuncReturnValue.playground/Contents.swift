import Foundation

public class TestClass{
    
    public func Test(para: Int) -> (String) -> Bool{
        
        return {para2 in
            print(para)
            print(para2)
            return para < (Int(para2))!
        }
    }

    public func Test2(para: Int) -> (String) -> (Bool) -> String{
        print(para)
        return { sPara in
            print(sPara)
            return { bPara in
                print(bPara)
                return bPara.description
            }
        }
    }
    
    public func Test3(num1: Int) -> ((Int,Int) -> Int, Int) -> Int{
        
        return { (inputOperator, num2) -> Int in
            return inputOperator(num1,num2)
        }
    }
}

let testclass = TestClass()

testclass.Test(para: 10)("20")

testclass.Test2(para: 90)("100")(true)

var result =  testclass.Test3(num1: 3)( {(num2,num3) in num2*num3 }, 4)
print(result)

func add(num1: Int, num2: Int) -> Int{
    return num1 + num2
}

result =  testclass.Test3(num1: 3)(add, 4)
print(result)
