//
//  Token.swift
//  YuiEditor
//
//  Created by jctao on 2020/6/17.
//  Copyright © 2020 jctaoo. All rights reserved.
//

import Foundation

struct TokenStyle {
  var key: String
}

protocol Token {
  
  static var style: TokenStyle { get }
  static var symbol: String? { get }
  
  var unicodeStart: String.Index { get set }
  var unicodeEnd: String.Index { get set }
  
}

struct Slot: Token {
  
  static var style: TokenStyle = TokenStyle(key: "yui_editoir_slot_token")
  static var symbol: String? = nil
  
  var unicodeStart: String.Index
  var unicodeEnd: String.Index
  var content: String = ""
  
}
