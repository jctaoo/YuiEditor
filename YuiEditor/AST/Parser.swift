//
//  Parser.swift
//  YuiEditor
//
//  Created by jctao on 2020/6/18.
//  Copyright © 2020 jctaoo. All rights reserved.
//

import Foundation

class Parser {
  
  var document: Document
  
  var bufferedTokens: [Token] = []
  var closedrangeToToken: [ClosedRange<String.Index>: Token] = [:]
  
  init(document: Document) {
    self.document = document
  }
  
}
