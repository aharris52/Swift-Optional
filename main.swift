/*
 @author: Andrew Harris
 @date: 23 Feb 2021
 @version: 1.0
 
 This demo goes over methods for handling Optionals
 in the Swift programming language. Three techniques
 are covered.

 First: Force Unwrapping
 Second: Optional Binding
 Third: Nil Coalescing Operator
 
 
 */

// Force Unwrapping
// denoted by a ! after calling variable

// The following snippet will crash as we cannot pass
// an optional a nil value.
/*
 let myOptional01: String?
 myOptional01 = nil
 let text01: String = myOptional01!
 */


print("Swift has some great ways to deal with optionals.")
print("")
print("**************************************************")
print("")
print("The first method is called \"Force Unwrapping\"")
print("")
print("Force unwrapping is dangerous because it assumes")
print("that we are unwrapping an item of the correct data")
print("type. Also, if we unwrap a variable containing a nil")
print("value, it will result in a runtime crash.")
print("The following code snippet will result in a runtime")
print("crash:")
print("")
print("let myOptional01: String?")
print("myOptional01 = nil")
print("let text01: String = myOptional01!")
print("")

print("")
print("**************************************************")
print("")
print("The next technique is called \"Optional Binding\"")
print("")
print("Optional Binding allows us to handle")
print("the event of passing a nil value.")
print("The following lines of console output")
print("demonstrate this technique in practice.")
print("")

// Optional Binding
// create an optional
let myOptional: String?
// assign it a value
myOptional = "This optional contains a String..."
if let safeOptional = myOptional {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("This optional was found to be nil...")
}
print("")
// create an optional
let myOptional2: String?
// assign it a value
myOptional2 = nil
if let safeOptional = myOptional2 {
    let text: String = safeOptional
    let text2: String = safeOptional
    print(safeOptional)
} else {
    print("This optional was found to be nil...")
}
print("")
print("However, this technique is quite verbose.")
print("")
print("Here is the code snippet:")
print("let myOptional: String?")
print("myOptional = \"This optional contains a String...\"")
print("if let safeOptional = myOptional {")
print("\t", "let text: String = safeOptional")
print("\t", "let text2: String = safeOptional")
print("\t", "print(safeOptional)")
print("} else {")
print("\t", "print(\"This optional was found to be nil...\")")
print("}")
print("")
print("This method took 9 lines of code to implement.")
print("I think we can do better.")
print("That is where our next method comes in...")
print("")
print("")
print("**************************************************")
print("")
print("The next technique is called the nil Coalescing Operator")
print("It is represented syntactically by the \"??\" symbol")
print("")
print("The following snippet does the same thing as the ")
print("previous nine lines of code.")
print("")
print("let myOptional3: String?")
print("myOptional3 = nil")
print("let text: String = myOptional3 ?? \"This is the programmed default value...\"")
print("print(text)")
print("")

// Nil Coalescing Operator
let myOptional3: String?

myOptional3 = nil
let text: String = myOptional3 ?? "This is the programmed default value..."
print(text)
print("")
print("This technique can also work on object references as well.")
print("")
print("**************************************************")
print("")
print("So how do we access the methods while ensuring")
print("that there are in fact methods to access?")
print("")
print("Optional Chaining allows us to work with objests")
print("without having to force-unwrap them.")
print("")
print("We can do this two ways depending on what we")
print("are trying to access. Here we are accessing an")
print("object's property:")
print("")
print("let myOptional4: MyOptional?")
print("myOptional4 = nil")
print("print(myOptional4!.property)")
print("We don't have a runtime crash which is nice,")
print("and we successfully pass our nil value.")
print("")

// Let's do the same technique, onle on object references
// first let's make an example struct
struct MyOptional {
    var property = 123
    
    func method(){
        print("I am the struct's method.")
    }
}
// crashes at runtime because we ref a nil object
// Functioning
// demonstrates printing nil to console
// so my app won't crash
let myOptional4: MyOptional?
myOptional4 = nil
print(myOptional4?.property)

print("")
print("Here we access the method and successfully call it:")
print("let myOptional5: MyOptional?")
print("myOptional5 = MyOptional()")
print("myOptional5?.method()")
print("")

// Accessing an object with optional chaining
let myOptional5: MyOptional?
myOptional5 = MyOptional()
myOptional5?.method()
