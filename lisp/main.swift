//
//  main.swift
//  lisp
//
//  Created by 村上幸雄 on 2015/09/27.
//  Copyright © 2015年 MURAKAMI Yukio. All rights reserved.
//

import Foundation

print("Hello, World!")

class SExp {
}

class Nihil: SExp {
    static let sharedInstance = Nihil()
}

class True: SExp {
    static let sharedInstance = Nihil()
}

class Atom: SExp {
}

class Number: Atom {
}

class Integer: Number {
}

class Symbol: Atom {
}

class ConsCell: SExp {
    var car: SExp
    var cdr: SExp
    
    override init() {
        car = Nihil.sharedInstance
        cdr = Nihil.sharedInstance
    }
    
    init(car: SExp, cdr: SExp) {
        self.car = car
        self.cdr = cdr
    }
}

class Environment {
    let seNihil = Nihil.sharedInstance
    let seTrue = True.sharedInstance
    
    func car(e: ConsCell) -> SExp {
        return e.car
    }
    
    func cdr(e: ConsCell) -> SExp {
        return e.cdr
    }
}

while true {
    print("> ", terminator:"")
    guard let line = readLine() else { break }
    if line == "quit" { break }
    print("\(line)")
}
print("quit")

/* End Of File */
