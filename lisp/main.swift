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
}

class True: SExp {
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
}

class Environment {
}